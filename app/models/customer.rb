class Customer < ActiveRecord::Base
  has_many :gifts

  validates :first_name, :last_name, presence: true
  validates :email, presence: true, email: true
  validates :phone, presence: true, phone: true

  def self.search(term)
    where('email = :term OR phone = :term', term: term)
  end

  def self.with_gifts
    includes(:gifts)
  end

  def self.by_name
    order(last_name: :asc, first_name: :asc)
  end

  def full_name
    [first_name, last_name].join(' ')
  end
end
