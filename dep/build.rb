require 'open3'
require_relative '../utils/builder'

name = "#{ENV['REG'] || 'fnproject'}/dep"

tag = "latest"
tags = [tag]
build("#{name}:#{tag}")
v, status = Open3.capture2e("docker run --rm #{name}:#{tag} version")
puts v
v = v.strip
v, status = Open3.capture2e("docker run --rm treeder/bump --extract --input \"v\" ")
puts v
# TODO: version is 'devel'....  gotta get a versioned version
# v = v.split(' ')[1]
# p v
# v = v.split('p')[0]
# p v
# new_tags = vtag(name, tag, v, false)

push_all(name, tags)
