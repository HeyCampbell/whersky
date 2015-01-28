get '/tags' do
  erb :'tags/all'
end

get '/tags/:id' do |id|
  @tag = Tag.find(id)
  erb :'tags/show'
end
