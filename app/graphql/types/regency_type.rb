module Types
  class RegencyType < Types::BaseObject
    field :id, Integer, null: false
    field :province, ProvinceType, null: false
    field :name, String, null: true
  end
end
