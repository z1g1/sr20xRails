# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :list do
    title "MyString"
    body "MyText"
    size "MyString"
    faction nil
    caster nil
    user nil
  end
end
