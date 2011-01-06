require 'test_helper'

class Nome:stringTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Nome:string.new.valid?
  end
end
