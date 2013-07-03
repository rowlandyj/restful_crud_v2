get '/' do
  @post = Post.all
  erb :index
end

get '/create_post' do
  @post = Post.new
  erb :create_post
end

get '/post/:post_id' do
  @post = Post.find(params[:post_id])
  erb :post
end

post '/create_post' do
  @post = Post.create(params[:post])
  redirect "post/#{@post.id}"
end

get '/edit_post/:post_id' do
  @post = Post.find(params[:post_id])
  erb :post_edit
end

post '/edit_post/:post_id' do
  @post = Post.find(params[:post_id])
  @post.update_attributes(params[:post])
  redirect "post/#{@post.id}"
end

get '/delete_post/:post_id' do
  @post = Post.find(params[:post_id])
  erb :post_delete
end

get '/delete' do
  redirect "/"
end

delete '/delete' do
  @post = Post.find(params[:id])
  @post.destroy
  redirect "/"
end



