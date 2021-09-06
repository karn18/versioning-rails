say "Increase minor number ✨"
require_relative 'helpers'

release = Version.release

read_version_file(Rails.root.join("config", "version.yml")) do |content|
  content.gsub!(/major: (\d+)/, "major: #{release.minor.to_i + 1}")
  content.gsub!(/minor: (\d+)/, "minor: 0")
  content.gsub!(/patch: (\d+)/, "patch: 0")
  build = `git rev-list HEAD | wc -l`.strip.to_i
  content.gsub!(/build: (\d+)/, "build: #{build}")
end
