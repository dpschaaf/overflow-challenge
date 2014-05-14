require 'spec_helper'

describe UsersController do
  context 'new' do
    it "is successful" do
      get :new
      expect(response).to be_success
    end

    it 'assigns @user to be new User' do
      get :new
      expect(assigns(:user)).to be_a_new User
    end
  end

  context 'create' do
    let(:user) { FactoryGirl.create :user }
    it 'succeed with valid user' do
      expect{ post :create, user: FactoryGirl.attributes_for(:user)
      }.to change { User.count }.by(1)
      expect(response).to be_redirect
    end

    it 'is unseccessful with invalid user' do
      expect{ post :create, user: {}
      }.to_not change { User.count }
      expect(response).to_not be_redirect
    end
  end
end