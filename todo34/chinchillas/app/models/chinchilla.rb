class Chinchilla < ActiveRecord::Base
  has_many :dust_baths, dependent: :destroy
end
