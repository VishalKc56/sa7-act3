# Initialize an array to hold the hashes
data_array = []

# Open and read the CSV file
File.open('data.csv') do |file|
    
  # Read the first line to get the headers/column names
  headers = file.first.strip.split(',')

  # Iterate over the rest of the lines in the file
  file.each do |line|

    # Split each line by comma to get the row values
    #Using strip to remove whitespace and newlines
    values = line.strip.split(',')

    # Combine the headers with the corresponding row values into a hash
    row_hash = headers.zip(values).to_h

    # Add the hash to the data array
    data_array << row_hash
  end
end

# Print the resulting array of hashes
puts data_array.inspect
