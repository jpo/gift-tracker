class CustomersController < ApplicationController
  before_filter :find_customer, only: [:show, :edit, :update, :destroy]

  def index
    @customers = find_customers
  end

  def search
    @customers = search_customers(params[:query])
    render :index
  end

  def show
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      flash[:success] = 'BOOM!'
      redirect_to customers_path
    end
    render :new
  end

  def edit
  end

  def update
    @customer.update_attributes(customer_params)
    redirect_to customer_path(@customer)
  end

  def destroy
    @customer.destroy
    redirect_to customers_path
  end

  private

  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :email, :phone)
  end

  def search_customers(query)
    Customer.with_gifts.search(query).by_name.all
  end

  def find_customers
    Customer.with_gifts.by_name.all
  end

  def find_customer
    @customer = Customer.with_gifts.find(params[:id])
  end
end
