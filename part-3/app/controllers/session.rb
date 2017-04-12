delete '/session/delete' do
  session.clear
  redirect '/'
end
