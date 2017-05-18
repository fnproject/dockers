require_relative '../utils/builder'
 
name = "funcy/sleeper"
tag = "latest"
build("#{name}:#{tag}")

new_tags = [tag]
push_all(name, new_tags)
