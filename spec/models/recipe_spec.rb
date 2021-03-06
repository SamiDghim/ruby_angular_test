require 'rails_helper'

RSpec.describe Recipe, :type => :model do

  describe 'Recipe' do
    it 'should be valid' do
      expect(build(:recipe)).to be_valid
    end

    it "should invalid without a title" do
      expect(build(:recipe, title: '')).to_not be_valid
    end

    it "should invalid without a description" do
      expect(build(:recipe, description: '')).to_not be_valid
    end

    it "should invalid without rating" do
      expect(build(:recipe, rating: '')).to_not be_valid
    end


    it "should store into db", :focus do
      expect(create(:recipe)).to_not be_nil
    end
  end
end
