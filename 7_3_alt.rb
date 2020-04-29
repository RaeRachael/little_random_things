people = [
  { "name" => "Mary", "sport" => "squash"},
  { "name" => "Lauren", "sport" => "squash"},
  { "name" => "Isla", "sport" => "weightlifting"},
  { "name" => "Sam", "sport" => "cycling"},
  { "name" => "Govind", "sport" => "squash"},
  { "name" => "Awad", "sport" => "weightlifting"},
  { "name" => "Will", "sport" => "cycling"}
]

reorder = people.group_by { |people| people["sport"] }

reorder.each { |sport,value| puts sport
    value.each{ |hsh| puts hsh["name"] } }


    