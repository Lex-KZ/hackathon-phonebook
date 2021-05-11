require 'rails_helper'

RSpec.describe User, type: :model do
    it 'should be a User' do
        expect(subject).to be_a_kind_of(User)
    end
end