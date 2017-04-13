require 'spec_helper'
require 'faker'

describe User do
    let(:user) {User.create({username: "Johnnyboii", email: Faker::Internet.email, password: "password"})}
    let(:user2) {User.create({username: "Lilliannnn", email: "email@gmail.com", password: "notpassword"})}

    it 'creates a new user and adds it to the database' do
      expect{user.save}.to change{User.all.length}.by 1
    end

  describe 'authentication process' do
    let(:found_user) {User.find_by(email: "email@gmail.com")}

    it 'is able to authenticate a valid user' do
      expect(found_user.authenticate("notpassword")).should_not be_nil
    end

    it 'does not authenticate an invalid user' do
      expect(found_user.authenticate("wishthiswasyourpassword01")).to be_nil
    end
  end

end
