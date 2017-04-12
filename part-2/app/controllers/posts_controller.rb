require 'sinatra'
require 'sinatra/json'

get "/posts" do
  @posts = Post.order("created_at DESC")
  erb :'posts/index'
end

post "/posts" do
  p params
  @post = Post.new(params[:post])
  @post.save
  # "HELLO"
  erb :'posts/_post', layout: false, locals: { post: @post }


  # if @post.save
  #   if request.xhr?
      # return erb :'posts/_post', layout: false, locals: { post: @post }
  #   else
  #     redirect "posts/#{@post.id}"
  #   end
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
  redirect "/posts/#{@post.id}"
end
