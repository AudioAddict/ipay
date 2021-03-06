require 'yaml'

module IPay
  
  EM_SWIPED             = 1
  EM_MANUAL_PRESENT     = 2
  EM_MANUAL_NOT_PRESENT = 3

  GOODS_DIGITAL   = 'D'
  GOODS_PHYSICAL  = 'P'

  CUR_INDICATOR_DOMESTIC  = 0
  CUR_INDICATOR_MCP       = 1
  CUR_INDICATOR_PYC       = 2

  TXN_INDICATOR_MAIL        = 'M'
  TXN_INDICATOR_POS         = 'P'
  TXN_INDICATOR_PHONE       = 'T'
  TXN_INDICATOR_RECUR       = 2
  TXN_INDICATOR_AUTH        = 5
  TXN_INDICATOR_AUTH_FAILED = 6
  TXN_INDICATOR_HTTPS       = 7

  BILLING_TXN_AUTH            = 0
  BILLING_TXN_SALE            = 1
  BILLING_TXN_AVS             = 2
  BILLING_TXN_ACH_VALIDATION  = 3

  ACCOUNT_CC  = 'CC'
  ACCOUNT_ACH = 'ACH'

  QUERY_TYPE_TXN    = 0
  QUERY_TYPE_GROUP  = 1

  BILLING_METHOD_PRE  = 'PRE'
  BILLING_METHOD_POST = 'POST'

  SCHEDULE_END_AMOUNT = 'END_AFTER_AMOUNT'
  SCHEDULE_END_COUNT  = 'END_AFTER_COUNT'
  SCHEDULE_END_DATE   = 'END_AFTER_DATE'
  SCHEDULE_NO_END     = 'NO_END'

  FREQUENCY_DAILY   = 'DAILY'
  FREQUENCY_WEEKLY  = 'WEEKLY'
  FREQUENCY_MONTHLY = 'MONTHLY'
  FREQUENCY_YEARLY  = 'YEARLY'

  FREQUENCY_DAY_SUN     = 'SUN'
  FREQUENCY_DAY_MON     = 'MON'
  FREQUENCY_DAY_TUE     = 'TUE'
  FREQUENCY_DAY_WED     = 'WED'
  FREQUENCY_DAY_THU     = 'THU'
  FREQUENCY_DAY_FRI     = 'FRI'
  FREQUENCY_DAY_SAT     = 'SAT'
  FREQUENCY_DAY_DAY     = 'DAY'
  FREQUENCY_DAY_WEEKDAY = 'WEEKDAY'
end