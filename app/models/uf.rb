class Uf < ApplicationRecord
    def self.load_csv_data
        file = File.open("lib/valor_uf.csv")
        file_data = file.readlines.map(&:chomp)
            file_data.each_with_index do |row, index|
                next if index.zero?
                cols = row.split(',')
                Uf.create(date: "#{cols[0]}", value: cols[1].to_f)
            end
    end
end
