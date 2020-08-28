class District < ApplicationRecord
  belongs_to :regency
  has_many :villages
end
