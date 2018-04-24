#!/usr/bin/env ruby

require 'tty-reader'

reader = TTY::Reader.new

reader.on(:keypress) do |event|
  if event.value == 'j'
    ...
  end

  if event.value == 'k'
    ...
  end
end
