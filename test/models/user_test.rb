require 'test_helper'

class UserTest < ActiveSupport::TestCase
  context 'A User' do
    should validate_presence_of(:name)
  end
end
