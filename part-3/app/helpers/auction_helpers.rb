module AuctionHelpers
  def date_and_time(datetime)
    datetime.strftime("%Y-%m-%dT%I:%M") #doesn't account for am or pm, moved on after timeboxing issue
  end

  def active_auctions(auctions)
    result = []
    now = DateTime.current
    auctions.each do |auction|
      result << auction if (auction.starts_at < now && auction.ends_at > now)
    end
    result
  end
end

helpers AuctionHelpers
