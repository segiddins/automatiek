module Automatiek
  require_relative "automatiek/gem"
  require_relative "automatiek/rake_task" if defined?(::Rake)
  require_relative "automatiek/version"
end
