require "prawn"
require "prawnto"

Prawn::Document.generate("hello.pdf") do
  text "Hello World!"
end