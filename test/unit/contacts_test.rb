require 'test_helper'

class ContactsTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Contacts.new.valid?
  end
end
