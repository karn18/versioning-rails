say "Increase minor number 🌟"
require_relative 'helpers'

release = Version.release

read_version_file(Rails.root.join("config", "version.yml")) do |content|
  content.gsub!(/minor: (\d+)/, "minor: #{release.minor.to_i + 1}")
  content.gsub!(/patch: (\d+)/, "patch: 0")
  build = `git rev-list HEAD | wc -l`.strip.to_i
  content.gsub!(/build: (\d+)/, "build: #{build}")
end
