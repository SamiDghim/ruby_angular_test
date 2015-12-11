require 'rails_helper'

RSpec.describe Ingredient, :type => :model do
  describe 'Ingredient' do
    it 'should be valid' do
      expect(build(:ingredient)).to be_valid
    end

    it "should invalid without a  name" do
      expect(build(:ingredient, name: '')).to_not be_valid
    end

    it "should store into db", :focus do
      expect(create(:ingredient)).to_not be_nil
    end
  end

end
