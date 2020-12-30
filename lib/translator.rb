# require modules here
require 'yaml'
require 'pry'


def load_library(file_path)
  # code goes here
  require 'yaml'
  unformatted_libary = YAML.load(File.open(file_path))
  #binding.pry
  
  #requirements
  # libary is hash of array key is name of emote and array is english then japanese emote
  # need to convert to hash of hash. First hash has key of sting name (no conversion needed) and items of :english and :japanese
  # second hash has key as defined above then item as string from the yaml Array
  
  #process
  # for each key and item (these are arrays) in libary hash
  # make new hash with new_key = key and two items :english and :japanese
  #   for each index in item array
  #   if index = 0
  #   newhash[new_key][:english] = item_array(0)
  #   if index = 1
  #   newhash[new_key][:japanese] = item_array(1)
  
  libary = unformatted_libary.each_with_object({}) do |(emote_name,emote_array),formatted_libary|
    if !formatted_libary[emote_name]
    formatted_libary[emote_name]={:english => nil, :japanese => nil}
    #binding.pry
    emote_array.each_with_index do |emote,index|
      if index == 0
        formatted_libary[emote_name][:english] = emote
      elsif index == 1
        formatted_libary[emote_name][:japanese] = emote
      end
    end
  end

  libary
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end