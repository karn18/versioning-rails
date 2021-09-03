say "Add beta version"
require_relative 'helpers'

release = App::Version.release

read_version_file(Rails.root.join("config", "version.yml")) do |content|
  content.gsub!(/patch: (\d+)/, "patch: #{release.patch}-beta")
end
