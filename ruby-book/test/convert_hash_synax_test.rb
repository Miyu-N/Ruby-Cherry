require 'minitest/autorun'
require './lib/convert_hash_synax'

class ConvertHashSynaxTTest < Minitest::Test
  def convert_hash_synax
    old_synax = <<~TEXT
    {
      :name => 'Alice'
      :age => 20,
      :gender => :female
    }
    TEXT
    expected = <<~TEXT
    {
      name: 'Alice'
      age:  20,
      gender: :female
    }
    TEXT
    assert_equal expected, convert_hash_synax(ol)
  end 
end 
