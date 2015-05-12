class Gift < ActiveRecord::Base
  belongs_to :customer

  validates :customer_id, :amount, :provided_at, :description, presence: true
  validates :amount, numericality: { only_integer: true, greater_than: 0 }
end
