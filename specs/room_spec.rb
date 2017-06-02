require "minitest/autorun"
require "minitest/rg"
require_relative("../room")
require_relative("../song")
require_relative("../guest")

class TestRoom < MiniTest::Test

  def setup
    @guest_1 =  Guest.new("Sam")
  end
end