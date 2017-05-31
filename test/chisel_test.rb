gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/chisel'

class ChiselTest < Minitest::Test
  def test_its_a_thing
    chisel = Chisel.new
    assert_instance_of Chisel, chisel
  end

  def test_it_can_read_file
    chisel = Chisel.new
    expected = "<h1>My Life in Desserts\n<h2>Chapter 1: The Beginning\n"
    assert_equal expected, chisel.heading
  end

  def test_p_tag
    # skip
    chisel = Chisel.new
    expected = "<p>You just *have* to try the cheesecake," 'he said.' "Ever since it appeared in
    **Food & Wine** this place has been packed every night.<p>"
    assert_equal expected, chisel.p_tag
  end
end
