User.create(
  name: "Josh O'Rourke",
  email: 'joshorourke@me.com',
  password: 'demo'
)

customer = Customer.create(
  first_name: 'John',
  last_name: 'Smith',
  email: 'john.smith@me.com',
  phone: '6065551234'
)

Gift.create(
  customer_id: customer.id,
  provided_at: Time.zone.now,
  amount: 1000,
  description: 'Gift Card'
)
