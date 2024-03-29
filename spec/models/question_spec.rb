require 'spec_helper'

describe Question do
  context 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :body }
    it { should validate_presence_of :user }
  end

  context 'associations' do
    it { should belong_to :user }
  end
end