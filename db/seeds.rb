puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number: "01 75 16 78 98",
    category:     "french"
  },
  {
    name:         "The Waffle Factory",
    address:      "30 rue du Lombard 1000 Bruxelles",
    phone_number: "02 50 56 78 47",
    category:     "belgian"
  },
  {
    name:         "Pekin express",
    address:      "Route de la soie 00000 Pekin",
    phone_number: "66 66 66 78 98",
    category:     "chinese"
  },
  {
    name:         "Sushi express",
    address:      "Rue du marché au poisson 1000 Bruxelles",
    phone_number: "02 24 50 78 41",
    category:     "japanese"
  },
  {
    name:         "Ma che c****",
    address:      "Strada vieilla 92828 Roma",
    phone_number: "92 14 59 68 24",
    category:     "italian"
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
