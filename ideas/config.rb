require 'tty-config'

##=CONFIGURATION=##

# config object
config = TTY::Config.new

# config title
config.filename = 'rtile'

# config file type
config.extname = '.toml'

# config location
config.append_path Dir.pwd

# read the config file
config.read

# prompt user to create config if 'config.persisted?' does not return true
puts "Please create config" unless config.persisted?

#config.set 'settings.editor', value: 'emacs'

gaps = config.fetch('settings.gaps._top')
puts "The top gap is set at #{gaps}"

# add tty-command
# add tty-keypress
