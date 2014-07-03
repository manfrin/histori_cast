# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :episode do
    title "MyString"
    episode_number 1
    podcast nil
  end
end
