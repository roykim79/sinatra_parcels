require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require './lib/parcel'

get '/' do
  erb(:input)
end

post '/output' do
  length = params.fetch('length').to_f
  width = params.fetch('width').to_f
  height = params.fetch('height').to_f
  weight = params.fetch('weight').to_f
  parcel = Parcel.new(length, width, height, weight)
  @cost_to_ship = parcel.cost_to_ship()
  erb(:output)
end
