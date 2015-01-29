get '/blog/new', auth: :author do
  erb :'blog/new'
end

get '/blog/edit', auth: :author do

  @blog = Blog.find(params[:blog])
  erb :'blog/edit'
end


post '/blog', auth: :author do
  params[:blog][:user] = current_user
 p params
  blog = Blog.create(params[:blog])
  tags = parse_tags(params[:tags])
  tags.each do |tag|
    t = Tag.find_or_create_by(name: tag)
    blog.tags << t
  end
  # blog.tags = blog.tags.uniq

  redirect "/blog/#{blog.id}"
end

put '/blog/:id', auth: :author do |id|
  blog = Blog.find(id)
  blog.update(params[:blog])
  redirect "/blog/#{blog.id}"
end

get '/blog/:id' do |id|
    erb :'blog/show', locals: {blog: Blog.find(id)}
end
