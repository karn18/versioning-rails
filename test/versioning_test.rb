require "test_helper"

class VersioningTest < ActiveSupport::TestCase
  test "it has a version number" do
    assert Versioning::VERSION
  end
end
