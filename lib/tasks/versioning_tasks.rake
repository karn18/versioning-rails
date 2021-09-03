namespace :versioning do
  desc "Install Versioning"
  task :install do
    run_install_template "versioning_install"
  end
end

def run_install_template(name)
  system "#{RbConfig.ruby} ./bin/rails app:template LOCATION=#{File.expand_path("../install/#{name}.rb",  __dir__)}"
end
