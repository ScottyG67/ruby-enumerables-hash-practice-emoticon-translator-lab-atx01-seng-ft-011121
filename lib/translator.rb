# require modules here
Require 'yaml'
Require 'pry'


def load_library
  # code goes here
  hash = YAML.load("./lib/emoticons.yml")
  binding.pry
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end