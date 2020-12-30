# require modules here
require 'yaml'
require 'pry'


def load_library
  # code goes here
  require 'yaml'
  YAML.load(File.open("emoticons.yml"))
  binding.pry
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end