#!/usr/bin/env ruby

# *********************************************
# Jekyll Post Generator Awesomeness
# by Cody Krieger (http://codykrieger.com)
# *********************************************

# Usage:
# % ./newpost.rb POST NAME

if ARGV.empty? or ARGV[0].downcase == "--help" or ARGV[0].downcase == "-h"
  puts <<-USAGE
    Usage:
    ./newpost.rb POST NAME
  USAGE

  exit (ARGV.empty? ? 1 : 0)
end

class String
  def parameterize(sep = '-')
    # replace accented chars with their ascii equivalents
    parameterized_string = self.dup
    # Turn unwanted chars into the separator
    parameterized_string.gsub!(/[^a-z0-9\-_]+/i, sep)
    unless sep.nil? || sep.empty?
      re_sep = Regexp.escape(sep)
      # No more than one of the separator in a row.
      parameterized_string.gsub!(/#{re_sep}{2,}/, sep)
      # Remove leading/trailing separator.
      parameterized_string.gsub!(/^#{re_sep}|#{re_sep}$/i, '')
    end
    parameterized_string.downcase
  end
end

# Some constants
TEMPLATE = "template.markdown"
TARGET_DIR = "_posts"

# Get the title and use it to derive the new filename
title = ARGV.join(" ")
filename = "#{ Time.now.strftime('%Y-%m-%d')}-#{title.parameterize}.markdown" 
filepath = File.join(TARGET_DIR, filename)

# Create a copy of the template with the title replaced
new_post = File.read(TEMPLATE)
new_post.gsub!('%%TITLE%%', title)

# Write out the file to the target directory
new_post_file = File.open(filepath, 'w')
new_post_file.puts new_post
new_post_file.close

puts "Successfully created file => #{filepath}"

