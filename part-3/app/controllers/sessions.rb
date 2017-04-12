delete "/sessions" do
  session.destroy
  redirect '/'
end
