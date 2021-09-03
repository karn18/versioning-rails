require 'yaml'

class Version
  attr_reader :major, :minor, :patch, :build
  def initialize
    @version = YAML.safe_load(File.read(File.join("config", "version.yml")))
    @major = @version["major"]
    @minor = @version["minor"]
    @patch = @version["patch"]
    @build = @version["build"]
  end

  def compact
    [major, minor, patch].join('.')
  end

  def release
    self
  end

  def to_s
    compact.concat("+#{build}")
  end

  class << self
    def release
      new.release
    end
  end
end
