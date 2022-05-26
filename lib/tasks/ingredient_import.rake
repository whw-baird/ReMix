namespace :slurp do
  desc "import Ingredient data"
  task ingredient_import: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "Ingredient.csv"), encoding: 'bom|utf-8')
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    # csv_text.sub("\xEF\xBB\xBF", '')
    csv.each do |row|
      # puts row.to_hash
      i = Ingredient.new
      i.id = row["id"]
      i.name = row["name"]
      i.category_id = row["category_id"]
      i.save
      puts "#{i.id}, #{i.name} saved"
    end

    # puts "There are now #{Transaction.count} rows in the transaction table"
  end

end