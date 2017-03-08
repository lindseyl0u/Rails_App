FactoryGirl.define do
sequence(:email) { |n| "user#{n}@example.com"}
  factory :user do
    email
    password 'password'
    first_name 'Bob'
    last_name 'Glob'
    admin false
  end
  factory :user2, class: User do
  	email
  	password 'password2'
  	first_name 'Sue'
  	last_name 'Glue'
  	admin true
  end
end