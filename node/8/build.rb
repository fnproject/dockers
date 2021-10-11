require 'open3'
require_relative '../utils/builder'

name = "fnproject/node"

tag = "8"
build("#{name}:#{tag}")
v, status = Open3.capture2e("docker run --rm #{name}:#{tag} node -v")
v = v.strip
# returns: vX.Y.Z
puts v
v = v[1..v.length] # chop off v
puts v
new_tags = vtag(name, tag, v, false)

Dir.chdir 'dev'
tag = "8-dev"
build("#{name}:#{tag}")
new_tags += vtag(name, tag, v, true)

push_all(name, new_tags)