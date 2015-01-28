get '/blog/new', auth: :author do
  erb :'blog/new'
end

get '/blog/:id/edit', auth: :author do |id|
  @blog = Blog.find(id)
  if current_user == blog.user
    erb :'blog/edit'
  else
    redirect '/blog/#{@blog.id}'
  end
end


post '/blog/new', auth: :author do
  blog = Blog.create(params[:blog])
  tags = parse_tags(params[:tags])
  tags.each do |tag|
    t = Tag.find_or_create_by(name: tag)
    blog.tags << t
  end
  blog.tags = blog.tags.uniq

  redirect '/blog/#{blog.id}'
end

put '/blog/:id/edit', auth: :author do |id|
  blog = Blog.find(id)
  blog.update(params[:blog])

end

get '/blog/:id' do |id|
    erb :'blog/show', locals: {blog: Blog.find(id)}

end
