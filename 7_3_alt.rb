people = [
  { "name" => "Mary", "sport" => "squash"},
  { "name" => "Lauren", "sport" => "squash"},
  { "name" => "Isla", "sport" => "weightlifting"},
  { "name" => "Sam", "sport" => "cycling"},
  { "name" => "Govind", "sport" => "squash"},
  { "name" => "Awad", "sport" => "weightlifting"},
  { "name" => "Will", "sport" => "cycling"}
]

current_sport = "" 
reorder = people.group_by { |h| h["sport"] }.values

reorder.each { |x|
    x.each { |k,v|
    if current_sport != k["sport"] 
        puts k["sport"]
        current_sport = k["sport"]
    end 
    puts k["name"]
    }
}


    