require 'minitest/autorun'
require 'minitest/pride'
require './lib/exhibit'
require './lib/patron'

class PatronTest < Minitest::Test

  def setup

    @patron_1 = Patron.new({name: "Bob", spending_money: 20})
  end

  def test_it_exists

    assert_instance_of Patron, @patron_1
  end

  def test_it_has_a_name

    assert_equal "Bob", @patron_1.name
  end

  def test_it_has_spending_money

    assert_equal 20, @patron_1.spending_money
  end

  def test_it_has_interests

    patron_1.add_interest("Dead Sea Scrolls")
    patron_1.add_interest("Gems and Minerals")

    assert_equal "Dead Sea Scrolls", @patron_1.interests
    assert_equal "Gems and Minerals", @patron_1.interests
  end

end
