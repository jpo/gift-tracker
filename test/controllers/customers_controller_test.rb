require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  context 'GET to :index' do
    setup do
      get :index
    end

    should respond_with(:success)
    should render_template(:index)
  end

  context 'GET to :search' do
    setup do
      get :search
    end

    should respond_with(:success)
    should render_template(:index)
  end
end
