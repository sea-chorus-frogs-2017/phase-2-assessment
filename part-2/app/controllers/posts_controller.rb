require 'sinatra/json'

get "/posts" do
  @posts = Post.order("created_at DESC")
  erb :'posts/index'
end

post "/posts" do
  @post = Post.create!(params[:post])
  erb :'posts/_post', { layout: false, locals: {post: @post }}
  # if @post.save
  #   redirect "posts/#{@post.id}"
  # else
  #   erb :"posts/new"
  # end
end

get "/posts/new" do
  @post = Post.new
  erb :'posts/new'
end

get "/posts/:id" do
  @post = Post.find(params[:id])
  erb :'posts/show'
end

put "/posts/:id/like" do
  @post = Post.find(params[:id])
  @post.increment!(:likes_count)
  json post = {
    post: @post,
    points: @post.likes_count
  }
end
