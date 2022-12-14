require 'csv'
desc "Records data migrate from mongo DB to CSV files."
task :records_data_migration_mongo_to_csv => :environment do
  csv_file_path = "/home/josh/screamout/mongo_to_csv_files"
  migrations_history = []
  models = ['User', 'Content']
  models.each_with_index do |model_name, index|
    file_path = File.join(csv_file_path, "#{model_name}.csv")
    puts "Table Name: #{model_name}"
    add_data_in_csv(model_name, migrations_history, file_path)
    puts "END!!!\n\n\n"
  end
end

def add_data_in_csv(model_name, migrations_history, file_path)
  count = 0
  if model_name == 'User'
    records = User.all
  else
    records = Content.all
  end
  return true unless records.present?
  column_names = records.first.fields.keys
  total_records = records.count

  headers = get_headers(column_names, model_name)
  CSV.open(file_path, 'w', write_headers: true, headers: headers) do | writer |
    records.each do |record|
      data = column_names.map {|r| record[r] }
      begin
        writer << data
        count += 1
      rescue => e
        puts "Data record failed, User id: #{record.id}"
        writer << []
      end
    end
  end
  puts "Total records: #{total_records}, Inserted records: #{count}\n"
end

def get_headers(column_names, model_name)
  headers = []
  column_names.each do |col|
    if col.eql?("_id")
      headers << "#{model_name.underscore}_mongo_id"
    elsif col.include?("_id")
      headers << col.split("_id").join+"_mongo_id"
    else
      headers << col
    end
  end
  headers
end
