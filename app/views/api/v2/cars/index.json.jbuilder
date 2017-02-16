json.array! @cars.each do |car|
  json.id car.id
  json.identification_number car.identification_number
  json.manufacturer car.manufacturer
end 