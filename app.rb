require "sinatra"
require "sinatra/activerecord"
require "sinatra/reloader"

set :database, { adapter: "sqlite3", database: "db/development.sqlite3" }

require "./models/purchase"

EVENT_DATE = "2024-04-27"
TICKET_PRICE = 10

get("/") do
  send_file 'views/index.html'
end
