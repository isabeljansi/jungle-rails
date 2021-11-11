  
  # created by Isabel. File is NIL
  # money-rails
  # So humanized_money will ignore config.default_format = { no_cents_if_whole: false } if you don't set config.no_cents_if_whole = false
  # https://github.com/RubyMoney/money-rails
  
  MoneyRails.configure do |config|

  
  config.default_currency = :cad
  config.no_cents_if_whole = false

  config.default_format = { no_cents_if_whole: false }

  end