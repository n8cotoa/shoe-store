class Brand < ActiveRecord::Base
  has_and_belongs_to_many :stores

  validates :name, presence: true
  validates :price, presence: true
  validates :name, uniqueness: true
  validates :name, length: { maximum: 100 }

#   before_save :titlecase
#
# private
#   def titlecase
#     self.name = name.titleize
#   end
end
