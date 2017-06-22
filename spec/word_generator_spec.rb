require 'word_generator'
require 'spec_helper'

describe WordGenerator do
    describe 'new' do
    it "generates new word from /usr/share/dict/words file" do
        word_file_path = '/usr/share/dict/words' 
        generator = WordGenerator.new()
        word = generator.generate()
        expect(is_in_file?(word, word_file_path)).to be true
        another_word = generator.generate()
        expect(another_word).not_to be word
        expect(is_in_file?(another_word, word_file_path)).to be true
    end
  end
end