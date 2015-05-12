FactoryGirl.define do
  factory :john, class: Customer do
    first_name 'John'
    last_name 'Smith'
    email 'johnsmith@me.com'
    phone '5551112222'
  end
end
