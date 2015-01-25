require "vim_rename/version"
require "vim_rename/options"
require "vim_rename/file_data"

module VimRename
  def self.yes_no(message)
    puts "#{message} [Yn]: "
    answer = STDIN.gets.chomp.downcase
    %w{y yes}.include?(answer) || answer.empty?
  end
end
