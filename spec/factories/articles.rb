FactoryBot.define do
  factory :article do
    title { "First title" }
    teaser { "some text" }
    body { "why did Emma left Craft Academy?" }
    association :user
  end
end
