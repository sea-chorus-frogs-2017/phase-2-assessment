get '/' do
  todays_time = Time.now.utc.iso8601
  all_auctions = Auction.all.order(:starts_at)

  @current_auctions = all_auctions.select do |auction|
    (auction.starts_at.to_time.to_s < todays_time) && (auction.ends_at.to_time.to_s > todays_time)
  end
  erb :'index'
end
