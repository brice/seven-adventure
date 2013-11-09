module ActsAsCsv
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end

  module InstanceMethods
    def each &block
      @csv_rows.each &block
    end

    def read
      @csv_rows = []
      file = File.new(self.class.to_s.downcase + '.txt')
      @headers = file.gets.chomp.split(',')

      file.each do |row|
        csv_contents = row.chomp.split(',')
        @csv_rows << CsvRow.new(@headers, csv_contents)
      end
    end

    attr_accessor :headers, :csv_rows
    def initialize
      read
    end
  end
end

class CsvRow
  attr_accessor :row_head, :row_head

  def initialize (row_head, row_content)
    @row_head = row_head
    @row_content = row_content
  end

  def method_missing name, *args
    @row_content[@row_head.index(name.to_s)]
  end

end

class RubyCsv  # no inheritance! You can mix it in
  include ActsAsCsv
  acts_as_csv
end

csv = RubyCsv.new
csv.each {|row| p row.one}