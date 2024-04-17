require "sinatra"
require "sinatra/activerecord"
require "sinatra/reloader"

set :database, { adapter: "sqlite3", database: "db/development.sqlite3" }

require "./models/purchase"

get("/") do
  erb :welcome
end

get("/buy") do
  erb :buy
end
