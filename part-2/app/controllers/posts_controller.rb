get "/posts" do
  @posts = Post.order("created_at DESC")
  erb :'posts/index'
end

post "/posts" do
  # puts "==============================="
  # # p JSON.parse(params[:post])
  # puts "==============================="
  # p params
  # puts "====================="
  # p params[:post]
  # puts "====================="
  # p params[:post]["body"]
  post = Post.new(params[:post])
  # p post
  if post.save
    erb :'/posts/_new_post', layout: false, locals: {post: post}
  else
    erb :"posts/new"
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
  redirect "/posts/#{@post.id}"
end
