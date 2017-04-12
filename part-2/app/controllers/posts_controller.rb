require 'sinatra/json'

get "/posts" do
  @posts = Post.order("created_at DESC")
  erb :'posts/index'
end

post "/posts" do
  @post = Post.create!(params[:post])
  if request.xhr?
    if @post.save
      erb :'posts/_post', { layout: false, locals: {post: @post }}
    else
      status 422
    end
  else
    if @post.save
      redirect "posts/#{@post.id}"
    else
      erb :'posts/new'
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
  post = {
    post: @post,
    points: @post.likes_count
  }
  if request.xhr?
    json post
  else
    redirect "posts/#{@post.id}"
  end
end
