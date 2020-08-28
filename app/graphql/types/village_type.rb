module Types
  class VillageType < Types::BaseObject
    field :id, Integer, null: false
    field :district, DistrictType, null: false
    field :name, String, null: true
  end
end
