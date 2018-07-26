require_relative '../utils/builder'

name = "#{ENV['REG'] || 'fnproject'}/python"

Dir.chdir 'python3.6'
tag = "3.6"
build("#{name}:#{tag}")
v, status = Open3.capture2e("docker run --rm #{name}:#{tag} python3 --version")
v = v.strip
p v
v = v.split(' ')[1]
p v
new_tags += vtag(name, tag, v, false)

push_all(name, new_tags)
