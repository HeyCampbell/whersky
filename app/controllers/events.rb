get '/events' do
  erb :'events/all'
end



get '/events/new' do
  erb :'events/new'
end

post '/events/new' do
  p params
  # params[:event][:date] = Date.new(params[:event][:date])
  p params
  event = Event.create(params[:event])
  tags = parse_tags(params[:tags])
  tags.each do |tag|
    t = Tag.find_or_create_by(name: tag)
    event.tags << t
  end
  event.print_tix
  # blog.tags = blog.tags.uniq

  redirect "/events/#{event.id}"
end

put 'events/:id/edit' do


end

get 'events/buytix' do
  erb :'events/buy'
end

get '/events/:id' do |id|
  @event = Event.find(id)
  erb :'events/show'
end
