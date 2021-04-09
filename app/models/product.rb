class Product < ApplicationRecord
  before_destroy :not_referenced_any_line_item
  has_many :line_items, dependent: :destroy

  private

  def not_referenced_any_line_item
    unless line_items.empty?
      errors.add(:base, "Line items present")
      throw :abort
    end
  end
end
