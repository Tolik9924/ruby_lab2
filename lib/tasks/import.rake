require 'csv'
task :import, [:filename] => :environment do
	CSV.foreach('data.csv', :headers => true) do |row|
		Currency.create(name: row[0], value: row[1])
	end
end
