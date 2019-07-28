class Stock < ActiveRecord::Base
    
    def self.new_from_lookup(ticker_symbol)
      StockQuote::Stock.new(api_key: '') #add API key
      looked_up_stock = StockQuote::Stock.quote(ticker_symbol)
      #price = strip_commas(looked_up_stock.latest_price)
      new(name: looked_up_stock.company_name, ticker: looked_up_stock.symbol, last_price: looked_up_stock.latest_price )
    end
end
