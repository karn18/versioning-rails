namespace :version do
  desc "Current version number"
  task :current do
    puts "📢 Current version number is #{Version.release}"
  end
  
  desc "Increase patch number"
  task :patch do
    run_template "patch"
    Rake::Task["version:current"].invoke
  end

  desc "Increase minor number"
  task :minor do
    run_template "minor"
    Rake::Task["version:current"].invoke
  end

  desc "Increase major number"
  task :major do
    run_template "major"
    Rake::Task["version:current"].invoke
  end
end

def run_template(name)
  system "#{RbConfig.ruby} ./bin/rails app:template LOCATION=#{File.expand_path("../cmd/#{name}.rb",  __dir__)}"
end
