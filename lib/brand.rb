class Brand < ActiveRecord::Base
  has_and_belongs_to_many :stores

  validates :name, presence: true, uniqueness: true, length: { maximum: 100 }

  before_validation :titleize

  validates :price, presence: true
  validates_numericality_of :price, :greater_than_or_equal_to => 0

  before_validation :to_currency

  private

  def titleize
    self.name=(name.titleize)
  end

  def to_currency
    self.price = sprintf('%.2f' % price)
  end
end
