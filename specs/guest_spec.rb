require "minitest/autorun"
require "minitest/rg"
require_relative("../guest")

class TestGuest < MiniTest::Test

  def setup
    @guest_1 =  Guest.new("Sam")
  end

  def test_guest_has_name
    assert_equal("Sam", @guest_1.name)
end
end