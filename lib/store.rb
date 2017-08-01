class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
  validate :must_carry_clothes, on: :create
  before_destroy :has_employees?

  def must_carry_clothes
    if (!mens_apparel.present? || mens_apparel == false) &&
       (!womens_apparel.present? || womens_apparel == false)
      errors.add(:apparel, "must sells mens or womens apparel (or both)")
    end
  end

  private
  def has_employees?
    if self.employees.count > 0
      errors.add(:destroy, "You monster, people work here! You can't destroy this store!")
      throw :abort
    end
  end
end
