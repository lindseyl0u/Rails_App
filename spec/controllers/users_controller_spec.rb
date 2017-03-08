require 'rails_helper'

describe UsersController, :type => :controller do
  before do
        @user = User.create!(first_name: 'Bob', last_name: 'Glob', email: 'bobglob@email.com', password: 'password')
      	@user2 = User.create!(first_name: 'Sue', last_name: 'Glue', email: 'sueglue@email.com', password: 'password2') 
  end

  describe 'GET #show' do

    context 'User is logged in' do
      before do
        sign_in @user
      end

      it 'loads correct user details' do
        get :show, id: @user.id
          expect(response).to have_http_status(200)
          expect(assigns(:user)).to eq @user
        end

      it 'does not load other users details' do
        get :show, id: @user2.id
        expect(response).to have_http_status(302)
        expect(assigns(:user)).to eq @user2
      end
    end

      context 'No user is logged in' do

        it 'redirects to login' do
          get :show, id: @user.id
            expect(response).to redirect_to(root_path)
        end
      end
  end
end