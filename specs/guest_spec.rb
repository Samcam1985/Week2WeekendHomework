require "minitest/autorun"
require "minitest/rg"
require_relative("../guest")

class TestGuest < MiniTest::Test

  def setup
    @guest_1 =  Guest.new("Sam")
  end
end