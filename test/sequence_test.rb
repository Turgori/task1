require_relative "../sequence"
require "test/unit"

class SequenceTest < Test::Unit::TestCase
  def test_sequence_generate
    assert_equal('1', Sequence.generate_by_number(1))
    assert_equal('11', Sequence.generate_by_number(2))
    assert_equal('111221', Sequence.generate_by_number(5))
    assert_equal('3113112221232112111312211312113211', Sequence.generate_by_number(12))
  end

  def test_nothing_raised
    assert_nothing_raised(ArgumentError) { Sequence.generate_by_number(1) }
    assert_nothing_raised(ArgumentError) { Sequence.generate_by_number(3) }
    assert_nothing_raised(ArgumentError) { Sequence.generate_by_number(5) }
  end

  def test_error_raised
    assert_raise(ArgumentError) { Sequence.generate_by_number(0) }
    assert_raise(ArgumentError) { Sequence.generate_by_number(-1) }
    assert_raise(ArgumentError) { Sequence.generate_by_number('-1') }
    assert_raise(ArgumentError) { Sequence.generate_by_number('qwe') }
  end
end
