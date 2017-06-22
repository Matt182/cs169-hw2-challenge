class WordGenerator
    attr_accessor :path
    
    def initialize path = '/usr/share/dict/words'
        @path = path
    end
    
    def generate
        File.open(path).readlines.shuffle.pop
    end
end