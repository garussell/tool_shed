# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

@wood_shop = Shed.create!(name: "Woodworking Shop", city: "Denver", color: "Yellow", space_available: true)
@machine_shop = Shed.create!(name: "The Machine Shop", city: "Aurora", color: "Red", space_available: true)
@backyard = Shed.create!(name: "Boondock", city: "Berthoud", color: "Brown", space_available: false)

# Woodworking Tools
@square = Tool.create!(shed_id: 1, quantity: 1, tool_name: "Combination Square", description: "A tool used to measure right angles", available: true)
@tape_measure = Tool.create!(shed_id: 1, quantity: 2, tool_name: "Tape Measure", description: "A useful tool to measure lengths", available: true)
@dovetail_saw = Tool.create!(shed_id: 1, quantity: 1, tool_name: "Dovetail Saw", description: "A saw for cutting dovetails", available: false)
@chisel = Tool.create!(shed_id: 1, quantity: 10, tool_name: "Mortise Chisel", description: "A tool for hand cutting and fitting joinery", available: true)
@bench_plain = Tool.create!(shed_id: 1, quantity: 4, tool_name: "Bench Plane", description: "A tool used to flatten wooden surfaces.", available: false)

#Machine Tools
@table_saw = Tool.create!(shed_id: 2, quantity: 1, tool_name: "Table Saw", description: "A tool used to make straight cuts accross the board length or width", available: true)
@bandsaw = Tool.create!(shed_id: 2, quantity: 1, tool_name: "Band Saw", description: "A tool to process raw materials or make curved cuts", available: false)
@grinder = Tool.create!(shed_id: 2, quantity: 2, tool_name: "The Grinder", description: "A tool used sharpen and/or reshapen tools", available: true)
@chopsaw = Tool.create!(shed_id: 2, quantity: 1, tool_name: "Chopsaw", description: "A miter saw that is good for cutting square or angled ends", available: false)
@sander = Tool.create!(shed_id: 2, quantity: 4, tool_name: "Sander", description: "A tool used to abrade, flatten, and smooth surfaces using sandpaper", available: true)

#Backyard Tools
@mower = Tool.create!(shed_id: 3, quantity: 2, tool_name: "Lawn Mower", description: "Cut grass and weeds", available: true)
@shovel = Tool.create!(shed_id: 3, quantity: 3, tool_name: "Shovel", description: "Dig wholes and graves", available: true)
@rake = Tool.create!(shed_id: 3, quantity: 2, tool_name: "Rake", description: "Scrape the ground to pile stuff up", available: true)
@wheel_barrow = Tool.create!(shed_id: 3, quantity: 1, tool_name: "Wheel Barrow", description: "Wheel heavy stuff around the yard", available: true)
@axe = Tool.create!(shed_id: 3, quantity: 2, tool_name: "Axe", description: "Choppin' Firewood", available: true)
