require "spec_helper"

describe QuestionsController do
  let!(:question) { FactoryGirl.create :question }
  context 'index' do
    it 'is successful' do
      get :index
      expect(response).to be_success
    end

    it "assigns @questions to all questions in database" do
      get :index
      expect(assigns(:questions)).to eq Question.all
    end
  end

  context 'show' do
    it "is successful" do
      get :show, id: question.id
      expect(response).to be_success
    end

    it 'assigns @question to Question with specified id' do
      get :show, id: question.id
      expect(assigns(:question)).to eq question
    end
  end

  context 'new' do
    it "is successful" do
      get :new
      expect(response).to be_success
    end

    it "assigns @question to be a new question" do
      get :new
      expect(assigns(:question)).to be_a_new Question
    end
  end

  context 'create' do
    let(:user) { FactoryGirl.create :user }
    before(:each) do
      stub_current_user(user)
    end
    it "saves a valid question" do
      expect{ post :create, question: FactoryGirl.attributes_for(:question)
        }.to change { Question.count }.by(1)
       expect(response).to be_redirect
    end

    it "does not save an invalid question" do
      expect{ post :create, question: {}
      }.to_not change { Question.count }
       expect(response).to_not be_redirect
    end
  end

  context 'edit' do
    it "is successful" do
      get :edit, id: question.id
      expect(response).to be_success
    end

    it "assigns question to question found by id" do
      get :edit, id: question.id
      expect(assigns(:question)).to eq question
    end
  end

  context 'update' do
    it "should update valid question" do
      expect { put :update, id: question.id, question: { title: "yo"}
      }.to change { question.reload.title }.to("yo")
      expect(response).to be_redirect
    end

    it "should not update invalid question" do
      expect { put :update, id: question.id, question: { title: nil}
      }.to_not change { question.reload.title }
      expect(response).to_not be_redirect
    end
  end

  context 'destroy' do
    it "is succesfully deleted" do
      expect { delete :destroy, id: question.id
        }.to change { Question.count}.by(-1)
    end
  end
end