iPay
======

Ruby gem for interfacing with the iPay XML API

Changelog
---------

**v0.1.0**

- CC (credit/debit) and Wallet (client/account) requests
- Tests

**v0.0.1**

- Initial commit

Setup
-----

Create a configuration file 'ipay.yml' and place it in your apps config/ folder. The configuration file is automatically loaded for you and values are accessible via iPay::config struct.

Example configuration:

	:url: "https://uap.txngw.com/"
	:company_key: 6990
	:terminal_id: 6177
	:pin: 1234

Dependencies
----

- libxml-ruby for processing xml responses

Usage
----
	require 'ipay'
	resp = IPay::CC::Debit.sale(
		:amount => '4.99', 
		:account_number => '4000009999999991',
		:cvv => 123,
		:expiration => '0614', 
		:first_name => 'nick', 
		:last_name => 'wilson',
		:address => '123 fake st', 
		:city => 'sometown', 
		:state => 'NY', 
		:postal_code => '90210', 
		:country => IPay::Countries::USA
	)

	if resp.success?
		puts resp.data[:transaction_id]
	end