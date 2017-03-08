FactoryGirl.define do
  factory :user do
    email 'bobglob@email.com'
    password 'password'
    first_name 'Bob'
    last_name 'Glob'
    admin false
  end
  factory :user2, class: User do
  	email 'sueglue@email.com'
  	password 'password2'
  	first_name 'Sue'
  	last_name 'Glue'
  	admin true
  end
end