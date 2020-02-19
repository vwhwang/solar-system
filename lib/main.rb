require_relative "planet"
require_relative "solar_system"

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  puts earth.summary

  solar_system = SolarSystem.new('Sol')

  solar_system.add_planet(earth)
  mercury = Planet.new('Mercury','blue',3.285e23,4.809e7,"closest to sun")
  solar_system.add_planet(mercury)


  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name('eArth')
  puts found_planet

  puts found_planet.summary

  distance_between_earth_mercury = solar_system.distance_between('earth','mercury')
  puts "mercury and earth is #{distance_between_earth_mercury}"

end 

main 
