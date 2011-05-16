CLR_VERSION = "v4.0.30319"
COMPILE_TARGET = "debug"
CLR_TOOLS_VERSION = "v4.0.30319"
require "build_support/BuildUtils.rb"

include FileTest
require 'albacore'

desc "Compiles, unit tests, generates the database"
task :all => [:default]

desc "**Default**, compiles and runs tests"
task :default => [:compile, :guides]

desc 'Generate guides (for authors), use ONLY=foo to process just "foo.textile"'
task :guides do
  ruby "fubu_guides.rb"
end

desc "Compiles the app"
task :compile do
  MSBuildRunner.compile :compilemode => COMPILE_TARGET, :solutionfile => 'src/FubuMVC.Guides.sln', :clrversion => CLR_VERSION
end

desc "Target called by CI system"
task :ci => [:default] do
  
end
