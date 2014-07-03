# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :podcast do
    title "MyString"
    description "MyText"
    user nil
  end
end
