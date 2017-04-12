require 'spec_helper'

describe User do
  describe "validations" do
    let!(:good_params){{username: "Pop",
                        email: "pop@pop.pop",
                        password: '123'}}
    let!(:good_user){User.create!(good_params)}

    it 'creates a User given proper params' do
      expect(User.last).to eq good_user
    end


    it ''
  end
end
