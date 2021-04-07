require 'rails_helper'


RSpec.describe User, type: :model do 

    subject(:user) do
        FactoryBot.create(:user,
        username: "jonathan",
        password: "goodpassword")  
    end


    it "creates a password digest when a password is given" do 
        # user1 = User.create(username: "sebastian", password: "helloworld")
        expect(user.password_digest).to_not be_nil
    end 


    it { should validate_presence_of(:username) }
    it { should validate_uniqueness_of(:username) }
    it { should validate_presence_of(:password_digest) }
    it { should validate_length_of(:password).is_at_least(6) }
    it { should have_many(:goals) }


end 
