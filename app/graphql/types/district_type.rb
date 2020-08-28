module Types
  class DistrictType < Types::BaseObject
    field :id, Integer, null: false
    field :regency, RegencyType, null: false
    field :name, String, null: true
  end
end
