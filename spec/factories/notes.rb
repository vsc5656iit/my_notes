FactoryGirl.define do
  sequence :title do |n|
    "Note Title ##{n}"
  end

  factory :note do
    title
  end
end
