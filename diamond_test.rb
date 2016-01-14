require_relative "diamond"
require "test/unit"
require 'stringio'

class DiamondTest < Test::Unit::TestCase

  def test_upper_a
    old_stdout = $stdout
    foo = StringIO.new
    $stdout = foo

    Diamond.new('A').print

    $stdout = old_stdout

    expected_string = File.read('testA.txt')
    assert_equal(expected_string, foo.string)

  end

  def test_lower_a
    old_stdout = $stdout
    foo = StringIO.new
    $stdout = foo

    Diamond.new('a').print

    $stdout = old_stdout

    expected_string = File.read('testA.txt')
    assert_equal(expected_string, foo.string)

  end

  def test_upper_e
    old_stdout = $stdout
    foo = StringIO.new
    $stdout = foo

    Diamond.new('E').print

    $stdout = old_stdout

    expected_string = File.read('testE.txt')
    assert_equal(expected_string, foo.string)

  end

  def test_lower_e
    old_stdout = $stdout
    foo = StringIO.new
    $stdout = foo

    Diamond.new('e').print

    $stdout = old_stdout

    expected_string = File.read('testE.txt')
    assert_equal(expected_string, foo.string)

  end

  def test_z
    old_stdout = $stdout
    foo = StringIO.new
    $stdout = foo

    Diamond.new('Z').print

    $stdout = old_stdout

    expected_string = File.read('testZ.txt')
    assert_equal(expected_string, foo.string)

  end

  def test_invalid

    assert_raise(RuntimeError, "INVALID_INPUT") do
      Diamond.new("1")
    end
  end


end