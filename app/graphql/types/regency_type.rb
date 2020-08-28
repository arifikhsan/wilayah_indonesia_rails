module Types
  class RegencyType < Types::BaseObject
    field :id, GraphQL::Types::BigInt, null: false
    field :province, ProvinceType, null: false
    field :name, String, null: true
  end
end
