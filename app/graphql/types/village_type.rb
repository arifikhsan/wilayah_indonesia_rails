module Types
  class VillageType < Types::BaseObject
    field :id, GraphQL::Types::BigInt, null: false
    field :district, DistrictType, null: false
    field :name, String, null: true
  end
end
