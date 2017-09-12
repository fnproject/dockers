# Builds ALL the things

require_relative 'utils/builder'

Dir.chdir("ruby")
stream_exec('ruby build.rb')

exit 

Dir.glob('*').select do |f|
    puts "checking #{f}"
    if File.directory?(f)
        Dir.chdir(f)
        if File.file?('build.rb')
            stream_exec('ruby build.rb')
        end
        Dir.chdir '../'
    end
end
