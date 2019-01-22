require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib/app", __FILE__)


require 'scrapper'

data_hash = Scrapper.new.perform

puts data_hash

File.open("C:/Users/Hery Mirindra/Desktop/data_saver/db/emails.json","w") do |f|
  f.write(JSON.pretty_generate(data_hash))
end