require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'arrays'

class ArraysTest < MiniTest::Test
	def setup
		@m = Class.new do
     include Arrays
   	end.new
	end
	def test_middles
		assert_equal [3,4] , @m.middles([1,3,2],[6,4,7])
		assert_equal [6,7], @m.middles([5,6,7],[4,7,8])
	end
	def test_max
		assert_equal 7, @m.max([1,2,3,4,4,7])
		assert_equal 1, @m.max([0,0,1])
		assert_equal 5, @m.max([5])
	end
	def test_lucky13
		assert_equal true, @m.lucky13?([4,5,6,7,8])
		assert_equal false, @m.lucky13?([1,2,3])
		assert_equal false, @m.lucky13?([1,4,5])
		assert_equal false, @m.lucky13?([3,6,7])
	end
end