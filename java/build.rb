
require 'open3'
require_relative '../utils/builder'

name = "fnproject/java"
new_tags = []

# now 1.8
Dir.chdir 'java-1.8'
tag = "latest"
build("#{name}:#{tag}")
v, status = Open3.capture2e("docker run --rm #{name}:#{tag} java -version")
v = v.strip
p v
v = v.split( /\r?\n/ )
p v
v.each do |line|
  puts "line: #{line}"
  split = line.split(' ')
  if split[1] == "version"
    v = split[2]
    break
  end
end
v = v.tr('"', '')
puts v
split = v.split('_')
v = split[0]
puts v
new_tags += vtag(name, tag, v, false)

Dir.chdir 'dev'
tag = "dev"
build("#{name}:#{tag}")
puts v
new_tags += vtag(name, tag, v, true)

push_all(name, new_tags)
