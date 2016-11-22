Location.all.each do |location|

  location.wide_door_entryways = "Yes"
  location.bathroom_accessibility = "Yes"
  location.accessible_table_heights = "No"
  location.handicap_parking = "Yes"
  location.step_free_access = "N/A"
  location.automatic_doors = "No"
  location.elevator = "N/A"
  location.save

end
