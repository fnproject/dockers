
require 'open3'
require_relative '../utils/builder'

name = "fnproject/fn-java-svm"

Dir.chdir 'dev'
tag = "dev"
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
new_tags = vtag(name, tag, v, true, 1)

Dir.chdir '..'
tag = "latest"
build("#{name}:#{tag}")
puts v
new_tags += vtag(name, tag, v, false, 1)
