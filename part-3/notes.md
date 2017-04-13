TODO:
1) Implement bidding
2) Implement link to homepage
3) Implement auctions list by datetime
4) More stylization
5) Refactor code to be more dry (use partials)

TO IMPLEMENT BIDDING:
1. Create bidding model & migration
2. Bidding has the attributes:
  a. amount (integer)
  b. bidder/user_id (integer)
  c. auction/item_id (integer)
3. Relationships
  a. A bidding belongs to a user
  b. A bidding belongs to an auction
  c. A user can only have 1 bid on 1 auction
  d. An auction can have many bids from different users
4. Actionables:
  a. Create submit button that creates Bidding
