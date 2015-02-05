# Rake tasks to parse haml layouts, includes and index files and sass files for jekyll
# Assumes that the haml files are in (_layouts|_includes)/_haml
# and the sass files are in css/_sass

namespace :haml do
  require 'haml'

  def convert file, destination
    base_name = File.basename(file, '.html.haml') + '.html'
    html = File.open(file, 'r') { |f| Haml::Engine.new(f.read, attr_wrapper: %["]).render }
    File.open(File.join(destination, base_name), 'w') { |f| f.write html }
  end

  desc 'Parse haml all files'
  task :all do
    Dir.glob('**/*.html.haml') do |path|
      convert path, File.dirname(path)
    end

    puts 'Parsed all haml files'
  end

end

desc 'Parse all haml items'
task haml: ['haml:all']

desc 'Build all haml files for deployment'
task build: [:haml]