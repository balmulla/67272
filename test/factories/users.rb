FactoryBot.define do
  factory :user do
    bank_id { 1 }
    name { "MyString" }
    password_digest { "MyString" }
    email { "MyString" }
    phone { "MyString" }
  end
end
