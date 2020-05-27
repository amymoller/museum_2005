class Patron

  attr_reader :name,
              :spending_money,
              :interests

  def initialize(name)
    @name = name
    @spending_money = spending_money
    @interests = []
  end

  def spending_money(number)
    @spending_money << number
  end

  def add_interest(interest)
    @interests << interest
  end 

end
