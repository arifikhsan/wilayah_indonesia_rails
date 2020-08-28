module Types
  class QueryType < Types::BaseObject
    field :provinces, [ProvinceType], null: false, description: "Semua daftar provinsi"
    def provinces
      Province.all
    end

    field :regencies, [RegencyType], null: false, description: "Semua daftar kota atau kabupaten"
    def regencies
      Regency.all
    end

    field :districts, [DistrictType], null: false, description: "Semua daftar kecamatan"
    def districts
      District.all
    end

    field :villages, [VillageType], null: false, description: "Semua daftar desa"
    def villages
      Village.all
    end
  end
end
