FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}
    password "foobar"
    password_confirmation "foobar"

    factory :admin do
      admin true
    end
  end

  factory :blog_post do
  	title     "Blog Post Title"
  	body      "Loren Ipsum"
  	image_url "blog_image.jpg"
  	user
  end
end