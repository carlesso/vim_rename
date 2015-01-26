require 'fileutils'
module VimRename
  class FileData
    attr_accessor :name, :extension, :basename
    def initialize(name, skip_extension = true)
      self.name = name
      self.basename = if skip_extension
                         m = name.match(/(?<extension>\.([^.]*)|\.tar\.gz|\.tar\.bz2|\.svg\.gz|\.tar\.xz)$/)
                         self.extension = m[:extension] if m
                         name.gsub(/#{extension}$/, '')
                       else
                         name
                       end
    end

    def update(new_name)
      self.basename = new_name
    end

    def full_name
      "#{basename}#{extension}"
    end

    def changed?
      full_name != name
    end

    def rename!
      FileUtils.mv name, full_name
    end
  end
end
