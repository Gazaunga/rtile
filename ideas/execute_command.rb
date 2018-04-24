#!/usr/bin/env ruby

require 'tty-command'

cmd = TTY::Command.new(printer: :progress)

#cmd.run('ls -la', only_output_on_error: true) # stays quiet unless something is wrong
#cmd.run('echo Hello!', signal: :KILL) # You can specify process termination signal other than the defaut SIGTERM

out, err = cmd.run('cat ~/.bashrc | grep alias')
