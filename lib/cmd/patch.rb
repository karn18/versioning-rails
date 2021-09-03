say "Increase patch number"
require_relative 'helpers'

release = App::Version.release

read_version_file(Rails.root.join("config", "version.yml")) do |content|
  content.gsub!(/patch: (\d+)/, "patch: #{release.patch.to_i + 1}")
  build = `git rev-list HEAD | wc -l`.strip.to_i
  content.gsub!(/build: (\d+)/, "build: #{build}")
end
