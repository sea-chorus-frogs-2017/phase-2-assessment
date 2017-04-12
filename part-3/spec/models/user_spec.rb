require 'spec_helper'

describe User do
  describe "validations" do
    let!(:good_params){{username: "Pop",
                        email: "pop@pop.pop",
                        password: '123'}}
    let!(:good_user){User.create!(good_params)}

    it 'creates a User given proper params' do
      expect(User.first).to eq good_user
    end

    it 'does not create User without an email' do
      expect{ User.create!(username: "Looper", password: "123") }.to raise_error
    end

    it 'does not create User without a username' do
      expect{ User.create!(email: "yo@yo.org", password: "123") }.to raise_error
    end

    it 'does not create User without a password' do
      expect{ User.create!(email: "yo@yo.org", username: "Looper") }.to raise_error
    end
  end
end
