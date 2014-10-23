# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :location do
    latitude 1.5
    longitude 1.5
    street "MyString"
    city "MyString"
    state "MyString"
    zip "MyString"
  end
end
