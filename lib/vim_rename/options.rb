require 'optparse'
require 'ostruct'

module VimRename
  class Optparse
    def self.parse(args)
      options = OpenStruct.new
      options.split = true
      options.confirm = true
      options.confirm_each = false
      options.skip_extension = false
      options.vim_diff = false
      options.verbose = false
      options.files = []

      opt_parser = OptionParser.new do |opts|
        opts.banner = 'Usage: vim_rename [options]'
        opts.separator ''

        opts.on('-s', '--split', "Split vim view in 2 columns, target file names and old names for reference") do |split|
          options.split = true
        end
        opts.on('-c', '--confirm', "Asks for confirmation, showing the changes, before doing any action") do |split|
          options.confirm = true
        end
        opts.on('-C', '--confirm-each', "Asks for confirmation before EACH action (will exclude --confirm) ") do |split|
          options.confirm_each = true
        end
        opts.on('-d', '--diff', "Use vimdiff (will exclude --split)") do |split|
          options.vim_diff = true
        end
        opts.on('-e', '--skip-extensions', "Skip extension from being displayed") do |split|
          options.skip_extension = true
        end
        opts.on('-v', '--verbose', "Increase verbosity") do |split|
          options.verbose = true
        end
      end
      opt_parser.parse!(args)
      options.files = args
      options.confirm = false if options.confirm_each
      options
    end
  end
end
