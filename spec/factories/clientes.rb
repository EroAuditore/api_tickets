FactoryBot.define do
  factory :cliente do
    nombre { "Nombre cliente" }
    rfc { "RFC cliente" }
    direccion { "direccion cliente" }
    email { "email@mail.com" }
    agente 
  end
end
