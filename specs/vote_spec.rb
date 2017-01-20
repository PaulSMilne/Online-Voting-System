require "minitest/autorun"
require "minitest/rg"
require_relative "../models/vote.rb"

class TestVote <MiniTest::Test

    def setup
        @vote = Vote.new('vote_id' => 2)
    end

    def test_id
        assert_equal(2, @vote.vote_id)
    end

end
