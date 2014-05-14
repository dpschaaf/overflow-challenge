require 'spec_helper'

describe PagesController  do
  context "home" do
    xit "is successful" do
      get :home
      expect(response).to be_success
    end
  end
end