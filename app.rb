require "sinatra"
require "sinatra/activerecord"
require "sinatra/reloader"

set :database, { adapter: "sqlite3", database: "db/development.sqlite3" }

require "./models/purchase"

EVENT_DATE = "2024-04-27"
TICKET_PRICE = 10

get("/") do

end

post("/purchase") do
  # Calculate total price based on quantity and a fixed ticket price
  total_price = params[:quantity].to_i * TICKET_PRICE
  
  # Create a new purchase record
  purchase = Purchase.create(
    email: params[:email],
    quantity: params[:quantity],
    total_price: total_price,
    confirmed: false  # Initially false, set to true after payment confirmation
  )

  # Redirect to payment process
end
