FactoryBot.define do
  factory :operator do
    company_id { 1 }
    name     { '河合' }
    email    { 'test@test.com' }
    password { 'password' }
    role     { 1 }
  end
end
