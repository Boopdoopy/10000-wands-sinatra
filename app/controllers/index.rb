require_relative '../models/magic_effects'

get '/' do
  erb :index
end

get '/effect/random' do
  num = rand(0000..9999).to_s.to_sym
  @magic = MAGIC_EFFECTS[num]
  erb :'effect/show'
end

get '/effect/:id' do
  id = params['id'].to_sym
  puts MAGIC_EFFECTS[id]
  @magic = MAGIC_EFFECTS[id]
  erb :'effect/show'
end


