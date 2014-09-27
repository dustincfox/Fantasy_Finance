require 'open-uri'
require 'csv'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#http://dev.markitondemand.com/Api/v2/Quote/json?symbol=AAPL

user = User.create(username: "Ditka", password: "password")

portfolio = Portfolio.create(user_id: user.id)

sector_1 = Sector.create(name: "Basic Materials")
sector_2 = Sector.create(name: "Conglomerates")
sector_3 = Sector.create(name: "Consumer Goods")
sector_4 = Sector.create(name: "Financial")
sector_5 = Sector.create(name: "Healthcare")
sector_6 = Sector.create(name: "Industrial Goods")
sector_7 = Sector.create(name: "Services")
sector_8 = Sector.create(name: "Technology")
sector_9 = Sector.create(name: "Utilities")

cat_1 = Category.create(name: "Stocks")
cat_2 = Category.create(name: "Index Funds")
cat_3 = Category.create(name: "Commodities")
 
stock_data = open("http://data.okfn.org/data/core/s-and-p-500-companies/r/constituents.csv") 

CSV.foreach(stock_data, :headers => true) do |row|
  if Sector.create(name: row["Sector"])
    sector = Sector.last
  else
    sector = Sector.find_by(name: row["Sector"])
  end
  Investment.create(user_id: user.id, portfolio_id: portfolio.id, category_id: cat_1.id, symbol: row["Symbol"], name: row["Name"], sector_id: sector.id)
end
  
  
 
 
  
