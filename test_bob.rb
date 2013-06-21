require 'test/unit'
# require './bob.rb'
require 'mocha/setup'

class MyTest < Test::Unit::TestCase
	def setup
		# @bob = Bob.new
		@response_question = 'What is today?'
		@response_statement = 'Hello.'
		@response_caps = 'TODAY IS FRIDAY'
		@response_empty = ''
	end

	def test_make_sure_statements_are_strings
		assert_instance_of String, @response_statement
	end

	def test_asking_a_question_will_return_sure
		assert_match /\?\z/, @response_question
	end

	def test_all_caps_response_will_return_Whoa
		assert_equal @response_caps, @response_caps.upcase
	end

	def test_check_for_no_response
		assert_equal 0, @response_empty.length
	end

	def test_statement_will_return_whatever
		assert_not_nil @response_statement
	end


end
