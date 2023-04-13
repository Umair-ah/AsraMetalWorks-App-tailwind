class Product < ApplicationRecord
  belongs_to :admin
  has_many_attached :pics
end
