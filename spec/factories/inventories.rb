# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :inventory do
    title "Title"
    description "Desc"
    quantity 9.9
  end
end
