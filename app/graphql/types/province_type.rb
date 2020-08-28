module Types
  class ProvinceType < Types::BaseObject
    field :id, GraphQL::Types::BigInt, null: false
    field :name, String, null: true
  end
end
