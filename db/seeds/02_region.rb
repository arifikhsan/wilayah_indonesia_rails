require 'csv'

if Province.count.zero?
  provinces_csv = CSV.parse(File.read(Rails.root + 'db/seeds/region/provinces.csv'))
  provinces = []
  provinces_csv.map do |province|
  provinces << Province.new(
    id: province.first,
    name: province.second
  )
  end

  Province.import provinces
end

if Regency.count.zero?
  regencies_csv = CSV.parse(File.read(Rails.root + 'db/seeds/region/regencies.csv'))
  regencies = []
  regencies_csv.map do |regency|
  regencies << Regency.new(
    id: regency.first,
    province_id: regency.second,
    name: regency.third
  )
  end

  Regency.import regencies
end

if District.count.zero?
  districts_csv = CSV.parse(File.read(Rails.root + 'db/seeds/region/districts.csv'))
  districts = []
  districts_csv.map do |district|
  districts << District.new(
    id: district.first,
    regency_id: district.second,
    name: district.third
  )
  end

  District.import districts
end

if Village.count.zero?
  villages_csv = CSV.parse(File.read(Rails.root + 'db/seeds/region/villages.csv'))
  villages = []
  villages_csv.map do |village|
  villages << Village.new(
    id: village.first,
    district_id: village.second,
    name: village.third
  )
  end

  Village.import villages, on_duplicate_key_ignore: true
end
