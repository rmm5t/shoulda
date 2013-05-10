require 'aruba/cucumber'

BUNDLE_GEMFILE = ENV["BUNDLE_GEMFILE"]
Aruba.configure do |config|
  config.before_cmd do |cmd|
    if cmd =~ /^bundle exec rake/
      set_env("BUNDLE_GEMFILE", BUNDLE_GEMFILE) if BUNDLE_GEMFILE
    end
  end
end

Before do
  @aruba_timeout_seconds = 15

  if ENV['DEBUG']
    @puts = true
    @announce_stdout = true
    @announce_stderr = true
    @announce_cmd = true
    @announce_dir = true
    @announce_env = true
  end
end
