class Store < ActiveRecord::Base
  has_and_belongs_to_many :brands

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { maximum: 100 }

  before_save :capitalize

private
  def capitalize
    self.name = (name.split(/(\W)/).map(&:capitalize).join)
  end
end
