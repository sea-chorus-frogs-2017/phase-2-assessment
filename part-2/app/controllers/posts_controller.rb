require 'sinatra'
require 'sinatra/json'

get "/posts" do
  @posts = Post.order("created_at DESC")
  erb :'posts/index'
end

post "/posts" do
  p params
  @post = Post.new(params[:post])
  if @post.save
    if request.xhr?
      erb :'posts/_post', layout: false, locals: { post: @post }
    else
      redirect "posts/#{@post.id}"
    end
  else
    if request.xhr?
      status 400
    else
      erb :"posts/new"
    end
  end
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
  if request.xhr?
    json new_likes: post_likes_count(@post)
  else
    redirect "/posts/#{@post.id}"
  end
end
