require "pathname"

module Nx
  class FileUtils
    class << self
      def sanitize(in_name)
        bad_chars = ["/", '\\', "?", "%", "*", "|", '"', "<", ">", "-", "（", "(", "）", ")", "、", "："]
        bad_chars.each do |char|
          in_name.gsub!(" ", "")
          in_name.gsub!("，", ",")
          in_name.gsub!(char, "_")
        end
        yield(in_name) if block_given?
        in_name
      end

      def ordinal(in_name, in_options = {})
        default_options = { number: 0, width: 3, char: "0", separator: "_" }
        options = default_options.merge(in_options)
        prefix = options[:number].to_s.rjust(options[:width], options[:char])
        prefix + options[:separator] + in_name
      end

      def strip_name(in_name)
        file = File.basename in_name
        dir = File.dirname in_name
        puts file
        puts dir
        new_filename = File.join(dir, sanitize(file))
        File.rename(in_name, new_filename)
      end
    end
  end
end
