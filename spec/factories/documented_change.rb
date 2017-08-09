FactoryGirl.define do
  factory :documented_change do
    summary 'We updated the thing'
    text 'This is the documentation for a change'
  end
end
