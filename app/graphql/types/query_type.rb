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

    field :regencies_by_province, [RegencyType], null: false, description: "Semua kota/kabupaten berdasarkan provinsi" do
      argument :province_id, Integer, required: true
    end
    def regencies_by_province(province_id:)
      Regency.where(province_id: province_id).order(:name)
    end

    field :districts_by_regency, [DistrictType], null: false, description: "Semua kecamatan berdasarkan kota/kabupaten" do
      argument :regency_id, Integer, required: true
    end
    def districts_by_regency(regency_id:)
      District.where(regency_id: regency_id).order(:name)
    end

    field :villages_by_district, [VillageType], null: false, description: "Semua desa berdasarkan kecamatan" do
      argument :district_id, Integer, required: true
    end
    def villages_by_district(district_id:)
      Village.where(district_id: district_id).order(:name)
    end
  end
end
