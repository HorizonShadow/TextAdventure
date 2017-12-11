require "test_helper"

class TextAdventureTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::TextAdventure::VERSION
  end

  def test_it_does_something_useful
    assert false
  end

  def test_it_does_start_a_server
    TextAdventure::Server.start!(9292)
    TextAdventure::Server.stop!
  end
end
