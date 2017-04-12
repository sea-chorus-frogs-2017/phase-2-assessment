delete "/sessions" do
  session.destroy
  redirect '/'
end

# post '/sessions' do

# end
