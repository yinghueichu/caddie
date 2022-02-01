# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ProductTag.delete_all
Product.delete_all
User.delete_all


puts 'Creating users...'
User.create!([
  {name: "Manon", email: "manon@caddie.io", password: "manon@caddie.io"},
  {name: "Nicolas", email: "nicolas@caddie.io", password: "nicolas@caddie.io"},
  {name: "Ying", email: "ying@caddie.io", password: "ying@caddie.io"}
])

puts "#{User.count} users created"

puts "Creating products.."

Product.create!([
  { name: "Peanut butter",
    frequency: 28,
    user_id: User.first.id
  },
  { name: "Pâte à tartiner",
    frequency: 28,
    user_id: User.first.id
  },
  { name: "Banana",
    category: "Fruits",
    frequency: 7,
    user_id: ( User.first.id + 1)
  },
  { name: "Soy milk",
    frequency: 7,
    user_id: ( User.first.id + 1)
  },
  { name: "Rice cake",
    frequency: 14,
    user_id: ( User.first.id + 2)
  },
  { name: "Abricot",
    category: "Fruits",
    user_id: User.first.id
  },
  { name: "Asperges",
    category: "Légumes",
    user_id: User.first.id
  },
  { name: "Aubergines",
    category: "Légumes",
    user_id: User.first.id
  }
])

puts "#{Product.count} products created!"

puts "Creating tags.."

Tag.create!([
  { name: "Terroir d'Avenir",
    group_name: "merchant"
  },
  { name: "La Grange",
    group_name: "merchant"
  },
  { name: "Zingam",
    group_name: "merchant"
  },
  { name: "Keto",
    group_name: "regime"
  },
  { name: "Fruit",
    group_name: "section"
  },
  { name: "Snack",
    group_name: "section"
  },
  { name: "Veggies",
    group_name: "section"
  },
  { name: "Protein",
    group_name: "section"
  }
])

puts "#{Tag.count} tags created!"


puts "Tagging product.."

ProductTag.create!([
  { product_id: Product.first.id,
    tag_id: 1
  },
  { product_id: ( Product.first.id + 1),
    tag_id: 1
  },
  { product_id: ( Product.first.id + 2),
    tag_id: 2
  },
  { product_id: ( Product.first.id + 3),
    tag_id: 2
  },
  { product_id: ( Product.first.id + 4),
    tag_id: 3
  }
])

puts "#{ProductTag.count} products tagged!"
