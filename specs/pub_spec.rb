require "minitest/autorun"
require "minitest/rg"
require_relative "../models/pub.rb"

class TestPub <MiniTest::Test

    def setup
        @pub = Pub.new('name' => "The Slaughtered Lamb", 'postcode' => "EH42 1RF", 'registered' =>false)
    end

    def test_if_registered_is_false
        assert_equal(false, @pub.registered)
    end

    def test_register
        @pub.register
        assert_equal(true, @pub.registered)
    end


    def test_name
        assert_equal("The Slaughtered Lamb", @pub.name)
    end

    def test_postcode
        assert_equal("EH42 1RF", @pub.postcode)
    end

end
