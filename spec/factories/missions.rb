# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :mission do
    name "MyString"
    packet nil
    victory "MyText"
    specialRules "MyText"
    tacticalTips "MyText"
    map "MyString"
    objective "MyString"
  end
end
