require 'test/unit'

require 'spec'

class ShouldSatisfyTest < Test::Unit::TestCase

  def test_should_raise_exception_when_block_yields_false
    assert_raise(Spec::Exceptions::ExpectationNotMetError) do
      5.should.satisfy { false }
    end
  end
  
  def test_should_not_raise_exception_when_block_yields_true
    assert_nothing_raised do
      5.should.satisfy { true }
    end
  end

  # should.not.satisfy
  
  def test_should_raise_exception_when_block_yields_false
    assert_raise(Spec::Exceptions::ExpectationNotMetError) do
      5.should.not.satisfy { true }
    end
  end
  
  def test_should_not_raise_exception_when_block_yields_true
    assert_nothing_raised do
      5.should.not.satisfy { false }
    end
  end

end
