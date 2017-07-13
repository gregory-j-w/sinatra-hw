require 'bundler'
Bundler.require

get '/comedy/json' do
  response['Access-Control-Allow-Origin'] = '*'
  content_type :json
  {name: "Comedy", top_movies:['Caddyshack','The Big Lebowski','Bad Santa']}.to_json
end

get '/action/json' do
  response['Access-Control-Allow-Origin'] = '*'
  content_type :json
  {name: "Action", top_movies:['Die Hard','The Dark Knight','Terminator 2']}.to_json
end

get '/sci-fi/json' do
  response['Access-Control-Allow-Origin'] = '*'
  content_type :json
  {name: "Sci-Fi", top_movies:['2001','Blade Runner','Inception']}.to_json
end

get '/action/json' do
  response['Access-Control-Allow-Origin'] = '*'
  content_type :json
  {name: "Action", top_movies:['Die Hard','The Dark Knight','Terminator 2']}.to_json
end

get '/drama/json' do
  response['Access-Control-Allow-Origin'] = '*'
  content_type :json
  {name: "Drama", top_movies:['The Godfather','Schindlers List','The Shawshank Redemption']}.to_json
end

get '/comedy/view' do
  @movie = {name: "Comedy", top_movies:['Caddyshack','The Big Lebowski','Bad Santa']}
  erb :movie
end

get '/action/view' do
  @movie = {name: "Action", top_movies:['Die Hard','The Dark Knight','Terminator 2']}
  erb :movie
end

get '/horror/view' do
  @movie = {name: "Horror", top_movies:['The Exorcist','The Shining','Halloween']}
  erb :movie
end

get '/sci-fi/view' do
  @movie = {name: "Sci-Fi", top_movies:['2001','Blade Runner','Inception']}
  erb :movie
end

get '/drama/view' do
  @movie = {name: "Drama", top_movies:['The Godfather','Schindlers List','The Shawshank Redemption']}
  erb :movie
end
