class Name
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def first
    @first_name
  end

  def last
    @last_name
  end

  def full
    [first, last].join(' ')
  end
end
