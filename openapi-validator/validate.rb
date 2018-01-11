require "openapi3_parser"


document = Openapi3Parser.load_file(ARGV.first)

# check whether document is valid
valid = document.valid?
errs = document.errors.to_a

if not valid
    errs.each{ |err| puts err.message }
    exit(1)
else
    puts "OpenAPI v3.0.0. Fn API spec is valid"
end
