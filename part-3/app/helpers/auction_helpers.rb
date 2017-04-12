module AuctionHelpers
  def date_and_time(datetime)
    datetime.strftime("%Y-%m-%dT%I:%M") #doesn't account for am or pm, moved on after timeboxing issue
  end
end

helpers AuctionHelpers
