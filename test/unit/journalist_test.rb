require 'test_helper'

class JournalistTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Journalist.new.valid?
  end
end
