require 'open3'
require_relative '../utils/builder'
 
name = "fnproject/error"
tag = "latest"
build("#{name}:#{tag}")

new_tags = [tag]
push_all(name, new_tags)
