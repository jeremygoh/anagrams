require './anagrams.rb'
require 'minitest/autorun'

class TestAnagrams < MiniTest::Unit::TestCase
	def test_nil_returns_nil
		assert_equal [], anagrams([])
	end

	def test_one_word
		assert_equal ['rat'], anagrams(['rat'])
	end

	def test_two_non_anagram_words
		assert_equal ['rat', 'star'], anagrams(['rat', 'star'])
	end

	def test_two_angram_words
		assert_equal [['rat', 'tar']], anagrams(['rat', 'tar'])
	end

	def test_three_anagram_words
		assert_equal [['rat', 'tar', 'art']], anagrams(['rat', 'tar', 'art'])
	end

	def test_two_adjacent_anagram_words_and_one_non
		assert_equal [['rat', 'tar'], 'star'], anagrams(['rat', 'tar', 'star'])
	end

	def test_one_non_and_two_anagram_words
		assert_equal ['star', ['rat', 'tar']], anagrams(['star', 'rat', 'tar'])
	end

	def test_two_non_adjacent_anagram_words_and_one_non
		assert_equal [['rat', 'tar'], 'star'], anagrams(['rat', 'star', 'tar'])
	end
end