require 'guard'
require 'guard/guard'

module Guard
  class Herbalizer < Guard
    def run_on_changes(paths)
      paths.each do |file|
        destination = file.gsub(/\.haml\Z/, '')
        IO.popen(["herbalizer", file], "r") do |input|
          File.open(destination, 'w') do |output|
            output.write(input.read)
          end
        end
      end
    end
    
    def run_all
      run_on_changes(Watcher.match_files(self, Dir.glob(File.join('**', '*'))))
    end
  end
end
