require 'test/unit'
require './taskTimer.rb'

class UserTest < Test::Unit::TestCase
    def test_speak
        u = User.new
        assert_equal 'HelloWorld!', u.speak
    end #test_speak
end #class
