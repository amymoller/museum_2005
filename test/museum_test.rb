require 'minitest/autorun'
require 'minitest/pride'
require './lib/exhibit'
require './lib/patron'
require './lib/museum'

class MuseumTest < Minitest::Test

  def setup

    @dmns = Museum.new({name: "Denver Museum of Nature and Science"})
  end

  def test_it_exists
    skip
    assert_instance_of Museum, @dmns
  end

  def test_it_has_a_name
    skip
    assert_equal "Denver Museum of Nature and Science", @dmns.name
  end






end 
