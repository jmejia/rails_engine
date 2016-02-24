require 'csv'

desc "Import merchants from csv file"
task :import => [:environment] do

  file = "vendor/csv/merchants.csv"

  CSV.foreach(file, :headers => true) do |row|
    Merchant.create(row.to_h)
  end

end
