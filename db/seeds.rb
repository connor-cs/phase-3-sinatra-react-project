puts "🌱 Seeding..."

# Seed your database here
Category.create(category_name: 'Flatiron')
Category.create(category_name: 'Fitness')
Category.create(category_name: 'Personal')

Task.create(taskname: "Finish code challenge", category_id: 1)
Task.create(taskname: "lift weights", category_id: 2)
Task.create(taskname: "cut the grass", category_id: 3)

puts "✅ Done seeding!"
