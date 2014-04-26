FactoryGirl.define do
  factory :user do
    sequence(:email) { |x| "#{x}@gmail.com" }
    sequence(:recipient_id) { |x| "recipient-#{x}-google-string-thing" }
  end
end
