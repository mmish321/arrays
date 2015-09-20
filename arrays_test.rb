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
	def test_repeat_seperator
		assert_equal "ThisAndThisAndThisAndThis", @m.repeat_seperator("This", "And", 4)
		assert_equal "YobutYobutYobutYobutYo", @m.repeat_seperator("Yo","but",5)
		assert_equal "MeepOrMeep", @m.repeat_seperator("Meep","Or",2)
		assert_equal "Hi", @m.repeat_seperator("Hi", "Because", 1)	
	end
	def test_same_ends
		assert_equal true , @m.same_ends?([5, 6, 45, 99, 23, 5, 6] , 2)
		assert_equal false, @m.same_ends?([5, 6, 45, 99, 23, 5, 6], 1)
		assert_equal false, @m.same_ends?([5, 6, 45, 99, 23, 5, 6], 3)
		assert_equal true, @m.same_ends?([5, 6, 45, 99, 23, 5, 6] , 7)
	end
	def test_starry
		assert_equal true, @m.starry?("me*ep")
		assert_equal false, @m.starry?("me*rp")
		assert_equal false, @m.starry?("meep")
		
	end
	def test_plus_it
		assert_equal "+++ABC+++" , @m.plus_it("123ABC456", "ABC")
		assert_equal "++++++" , @m.plus_it("123456", 'a')
		assert_equal "+++abc+++abc" , @m.plus_it("123abc123abc", 'abc')
		
	end
	def test_zero_front
		assert_equal [0,0,5,3,1,6], @m.zero_front([5,0,3,0,1,6])
		assert_equal [0,0,0,0,0], @m.zero_front([0,0,0,0,0])
		assert_equal [5,3,1,6], @m.zero_front([5,3,1,6])
		assert_equal [0,0,0,0,4,5,6,7,10], @m.zero_front([4,0,0,5,6,7,0,10,0])
	end
	def test_ten_run
		assert_equal [2, 10, 10, 10, 20, 20], @m.ten_run([2, 10, 3, 4, 20, 5])
		assert_equal [10,20,30,40,50], @m.ten_run([10,20,30,40,50])
		assert_equal [1,2,3,4,5,6], @m.ten_run([1,2,3,4,5,6])
		assert_equal [2,10,10,10,30,30], @m.ten_run([2,10,67,84,30,45])
	end
	def test_max_span
		assert_equal 4 , @m.max_span([1,2,1,1,3])
		assert_equal 6, @m.max_span([1,4,2,1,4,1,4])
		assert_equal 6, @m.max_span([1,4,2,1,4,4,4])
   		assert_equal 0, @m.max_span([1,2,3,4,5,6])
	end
end