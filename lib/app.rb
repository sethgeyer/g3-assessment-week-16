require "csv"


array_of_arrays = CSV.read("../data/abbreviated.tsv", { :col_sep => "\t"})



array_of_hashes = []
array_of_arrays.each do |array|
  hash = {}
  hash["timestamp"] = array[0]
  hash["container name"] = array[1]
  hash["pH"] = array[2]
  hash["nutrient solution level"] = array[3]
  hash["temperature"] = array[4]
  hash["water level"] = array[5]
  array_of_hashes << hash
end


array = []
container_hash = {}
container_hash["container1"] = []
container_hash["container2"] = []
container_hash["container3"] = []

array_of_hashes.each do |hash|
    if hash["container name"] == "container1"
      container_hash["container1"] << hash
    elsif hash["container name"] == "container2"
      container_hash["container2"] << hash
    elsif hash["container name"] == "container3"
      container_hash["container3"] << hash

    end
end
  array << container_hash


array[0]["container1"]