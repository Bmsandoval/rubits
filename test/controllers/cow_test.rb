require_relative '../../app/controllers/cow_controller'
require 'minitest/autorun'

class YourFirstTest < Minitest::Test

  # Tests must begin with test_ to be properly picked up
  def test_hello_world
    # Setup variable to test
    message = Cow
                 .new(cow: "stegosaurus", face_type: "default")
                 .say("Hello World!", "think")

    assert(message)
  end
end