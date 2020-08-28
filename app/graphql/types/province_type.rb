module Types
  class ProvinceType < Types::BaseObject
    field :id, Integer, null: false
    field :name, String, null: true
  end
end
