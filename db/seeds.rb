10.times do
  Car.create(
    identification_number:  Faker::Vehicle.vin,
    manufacturer: Faker::Vehicle.manufacture
    ) 
end