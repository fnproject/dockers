# Builds ALL the things

require_relative 'utils/builder'

glob_param = '*'
if ARGV.length > 0 
    # first arg can be chars to start from, in case it failed partway through
    glob_param = "[#{ARGV[0]}-z]*"
end
# p Dir.glob(glob_param)
Dir.glob(glob_param).select do |f|
    next if f == "mono" # https://bugs.alpinelinux.org/issues/9736
    puts "checking #{f}"
    if File.directory?(f)
        Dir.chdir(f)
        if File.file?('build.rb')
            stream_exec('ruby build.rb')
        end
        Dir.chdir '../'
    end
end
