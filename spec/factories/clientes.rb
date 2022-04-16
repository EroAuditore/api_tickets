FactoryBot.define do
  factory :cliente do
    nombre { "MyString" }
    rfc { "MyString" }
    direccion { "MyString" }
    email { "MyString" }
    agente { nil }
  end
end
