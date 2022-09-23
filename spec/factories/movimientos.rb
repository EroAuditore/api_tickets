FactoryBot.define do
  factory :movimiento do
    estatus { "abierto" }
    agente
    cliente

    trait :with_data do
      after(:create) do |movimiento|
        create_list :deposito, 3, movimiento: movimiento
        create_list :retorno, 3, movimiento: movimiento
        create_list :comision, 3, movimiento: movimiento
      end
    end
    
  end
end
