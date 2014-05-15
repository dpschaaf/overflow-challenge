require "spec_helper"

describe "Questions" do
  let!(:question) { FactoryGirl.create :question}
  context 'homepage' do
    it 'lists all the questions' do
      visit root_path
      expect(page).to have_content question.title
      expect(page).to have_content question.body
    end
  end

  context 'header' do
    let(:user) { FactoryGirl.create :user }
    before(:each) do
      stub_current_user(user)
    end

    it "brings us to a sign up page when we click sign p" do
      visit root_path
      click_on "Sign Up"
      expect(page).to have_button "Create User"
    end
  end

  context 'question page' do
    it "brings you to the question page when you click on the question title" do
      visit root_path
      click_on question.title
      expect(page).to have_content question.title
      expect(page).to have_content question.body
    end
  end

  context 'new question' do
    let(:user) { FactoryGirl.create :user }
    before(:each) do
      stub_current_user(user)
    end
    it "creates a question with specified title and body on submit" do
      visit new_question_path
      fill_in "Title", :with => question.title
      fill_in "Body", :with => question.body
      click_button 'Submit Question'
      expect(page).to have_content question.title
      expect(page).to have_content question.body
    end
  end

  context 'edit question' do
    let(:user) { FactoryGirl.create :user }
    before(:each) do
      stub_current_user(user)
    end
    it "edits a question with specified title and body on submit" do
      visit edit_question_path(question)
      fill_in "Title", :with => question.title
      fill_in "Body", :with => question.body
      click_button 'Submit Question'
      expect(page).to have_content question.title
      expect(page).to have_content question.body
    end
  end



end