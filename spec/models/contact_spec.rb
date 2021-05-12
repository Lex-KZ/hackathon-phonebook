require 'rails_helper'

RSpec.describe Contact, type: :model do
  describe "attributes" do
    it "should respond to #first_name" do
      expect(subject).to respond_to :first_name
    end

    it "should respond to #last_name" do
      expect(subject).to respond_to :last_name
    end


    it { is_expected.to respond_to :first_name }
    it { is_expected.to respond_to :last_name }
  end
end
