FactoryGirl.define do
  factory :film do
  	title {Faker::Book.title}
  	description {Faker::Lorem.sentence}
  	url_slug {Faker::Internet.url}
    year {rand(1920..2017)}
  end
end
