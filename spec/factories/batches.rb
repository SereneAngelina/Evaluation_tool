
FactoryGirl.define do
  factory :batch do
    code              2
    starts_at         Date.today
    ends_at           Date.today + 10
  end
end
