require 'sinatra/base'
require './lib/word_generator.rb'

class WordGeneratorApp < Sinatra::Base
    get '/' do
        @generator = WordGenerator.new
        return @generator.generate
    end
end