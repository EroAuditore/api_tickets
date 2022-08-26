FactoryBot.define do
  factory :agente do
    nombre { "Nombre del agente" }

    trait :with_cliente do
      after(:create) do |agente|
        create(:cliente, agente_id: agente.id)
      end
    end
  end
end
