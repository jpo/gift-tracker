require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  context 'A Customer' do
    should have_many(:gifts)

    should validate_presence_of(:first_name)
    should validate_presence_of(:last_name)
    should validate_presence_of(:email)
    should validate_presence_of(:phone)

    should allow_value('josh@me.com').for(:email)
    should allow_value('1112223333').for(:phone)

    should_not allow_value('josh', 'josh@', 'josh@me').for(:email)
    should_not allow_value('000-000-0000', '(000) 000-0000').for(:phone)

    should 'return a full name' do
      customer = build(:john)
      assert_equal 'John Smith', customer.full_name
    end
  end
end
