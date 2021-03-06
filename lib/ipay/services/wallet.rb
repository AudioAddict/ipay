require 'ipay/api_request'

module IPay
  module Wallet
        
    def self.default_values
      {
        :currency_code => IPay.config.defaults[:currency_code],
        :currency_indicator => IPay.config.defaults[:currency_indicator],
        :transaction_indicator => IPay.config.defaults[:transaction_indicator]
      }
    end
  
    class Client < ApiRequest
      self.service_format = '1010'
      class << self
        
        def insert(client, account, txn_type = BILLING_TXN_AVS, payment_data = nil)
          data = {:billing_transaction => txn_type}.merge( as_hash(client).merge as_hash(account) )
          data.merge! payment_data if payment_data
          send_request data
        end

        def modify(client_id, client)
          send_request as_hash(client).merge :client_id => client_id
        end
        
        def delete(client_id)
          send_request :client_id => client_id
        end
        
        alias :update :modify
      end
    end
  
    class Account < ApiRequest
      self.service_format = '1010'
      class << self
      
        def insert(client_id, account, txn_type = BILLING_TXN_AVS, payment_data = nil)
          data = as_hash(account).merge :billing_transaction => txn_type, :client_id => client_id
          data.merge! payment_data if payment_data
          send_request data
        end

        def modify(account_id, account)
          send_request as_hash(account).merge :account_id => account_id
        end

        def delete(account_id)
          send_request :account_id => account_id
        end
        
        alias :update :modify
      end
    end
    
  end
end