module Types
  class DistrictType < Types::BaseObject
    field :id, GraphQL::Types::BigInt, null: false
    field :regency, RegencyType, null: false
    field :name, String, null: true
  end
end
