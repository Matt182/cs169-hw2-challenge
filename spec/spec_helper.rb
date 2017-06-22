def is_in_file? (word, file_path)
    File.open(file_path, "r") do |f|
        f.each_line do |line|
            if line == word then return true end
        end
    end
    false
end