FactoryBot.define do
  factory :user do
    name { "Francisco" }
    email { "franciscodascouves@gmail.com" }
    password { "12345678abcd" }
    password_confirmation { "12345678abcd" }
    cpf { "624.639.990-80" }
  end
end
