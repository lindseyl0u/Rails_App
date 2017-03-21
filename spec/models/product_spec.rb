require 'rails_helper'

describe Product do
  context "when the product has comments" do
    before do
      @product = Product.create!(name: "Bubblegum")
      @user = FactoryGirl.create(:user)
      @product.comments.create!(rating: 5, user: @user, body: "So delicious!!")
      @product.comments.create!(rating: 3, user: @user, body: "They were just okay.")
      @product.comments.create!(rating: 1, user: @user, body: "I wish I had more..")
    	end

    	it "returns the average rating of all comments" do
    		expect(@product.average_rating).to eq (3)
    end
  end

  context ""
    it 'is not valid' do
    	expect(Product.new(description: "Yum yum")).not_to be_valid
    end
  end
end


