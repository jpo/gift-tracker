require 'test_helper'

class GiftTest < ActiveSupport::TestCase
  context 'A Gift' do
    should belong_to(:customer)

    should validate_presence_of(:customer_id)
    should validate_presence_of(:amount)
    should validate_presence_of(:provided_at)
    should validate_presence_of(:description)
    should validate_numericality_of(:amount).only_integer.is_greater_than(0)
  end
end
