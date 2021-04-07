require 'rails_helper'

RSpec.describe UsersController, type: :controller do

    subject(:user) do
        FactoryBot.create(:user,
        username: "jonathan",
        password: "goodpassword")
    end

    describe "GET #index"
        it "should render index page "
            get :index
            expect(response).to render_template(:index)
        end
    end

    describe "GET #show"
        it "should render show page "
            get :show, params: {id: user.id}
            expect(response).to render_template(:show)
        end
    end
    
    
end 
