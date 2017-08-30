FactoryGirl.define do

  sequence(:name) { |n| "Product#{n}" }
  sequence(:description) { |n| "This is Product#{n}" }
  sequence(:color) { |n| "color#{n}" }
  sequence(:price) { |n| "12.#{n}".to_d }
  sequence(:body) { |n| "This is Comment ##{n} text"}

  factory :product do
    name
    description
    image_url "/cat01.jpg"
    color
    price
  end

  factory :comment do
    body
    rating { rand(1..5) }
    commenter
    product
  end

  trait :has_comments do
    transient do
      number_of_comments 3
    end

    after :create do |product, evaluator|
      FactoryGirl.create_list :comment, evaluator.number_of_comments, :product => product
    end
    comment
  end

end