# require modules here

require "pry"

def load_library(file_path)
# code goes 
require "yaml"
emoticons = YAML.load_file(file_path)
new_hash = {}
emoticons.each {|key, value|
   if !new_hash[key]
     new_hash[key] = {}
   end 
   if !new_hash[key][:english]
      new_hash[key][:english] = value[0]
   end 
   if !new_hash[key][:japanese]
   new_hash[key][:japanese] = value[1]
   end 
}
new_hash
end



def get_japanese_emoticon(file_path, emoticon)
  hash_1 = load_library(file_path)
  hash_1.each {|key, value|
    value.each {|key_1, value_1|
      if emoticon == hash_1[key][:english]
         emoticon = hash_1[key][:japanese]
      end
    }
  }
emoticon
end



def get_english_meaning
  # code goes here
end