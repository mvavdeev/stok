require 'rails_helper'

describe Comment do

  # Generate test data
  before do
    5.times do
      FactoryGirl.create :product, :has_comments, :number_of_comments => rand(1..5)
    end
  end

end