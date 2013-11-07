
def my_grep(item, file)
    File.foreach(file).with_index do |line, line_num|
        if (line.index(item) != nil) then
            puts "#{line_num}:#{line}"
        end
    end

end

my_grep('Lorem', 'file.txt');