# if File.exist?(Rails.root.join('lib', 'Category.csv'))

# /lib/Category.csv

namespace :slurp do
  desc "import Category data"
  task category_import: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "Category.csv"), encoding: 'bom|utf-8')
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    # csv_text.sub("\xEF\xBB\xBF", '')
    csv.each do |row|
      c = Category.new
      c.id = row["id"]
      c.name = row["name"]
      c.save
      puts "#{c.id}, #{c.name} saved"
    end

    # puts "There are now #{Transaction.count} rows in the transaction table"
  end

end
