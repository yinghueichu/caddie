# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ProductTag.delete_all
ProductList.delete_all
List.delete_all
Product.delete_all
User.delete_all
Tag.delete_all

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
    frequency: 7,
    user_id: ( User.first.id + 1)
  },
  { name: "Soy milk",
    frequency: 7,
    user_id: ( User.first.id + 1)
  },
  { name: "Rice cake Multigrains",
    frequency: 14,
    user_id: User.first.id
  },
  { name: "Cashew butter",
    frequency: 14,
    user_id: ( User.first.id + 2)
  },
  { name: "Abricot",
    user_id: ( User.first.id + 2)
  },
  { name: "Asperges",
    user_id: ( User.first.id + 2)
  },
  { name: "Aubergines",
    user_id: ( User.first.id + 2)
  },
  { name: "Pomme",
    user_id: User.first.id
  },
  { name: "Fraises",
    user_id: User.first.id
  }
])

require "open-uri"

file_peanut_butter = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1643975814/development/peanut_butter_gybb0k.jpg")
peanut_butter = Product.find_by_name("Peanut butter")
peanut_butter.photo.attach(io: file_peanut_butter, filename: "peanut_butter_gybb0k.jpg")

file_pate = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1643975607/development/pate_ktf9io.jpg")
pate_a_tartiner = Product.find_by_name("Pâte à tartiner")
pate_a_tartiner.photo.attach(io: file_pate, filename: "pate_ktf9io.jpg")

file_banana = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1643975422/development/banana_gsgdc5.jpg")
banana = Product.find_by_name("Banana")
banana.photo.attach(io: file_banana, filename: "banana_gsgdc5.jpg")

file_soy_milk = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1643975281/development/soy_milk_rhl5s2.jpg")
soy_milk = Product.find_by_name("Soy milk")
soy_milk.photo.attach(io: file_soy_milk, filename: "soy_milk_rhl5s2.jpg")

file_rice_cake = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1643975115/development/lima_land_-_rice_cake_meergranen_100g_packshot_rgb_0_kfwjqr.jpg")
rice_cake = Product.find_by_name("Rice cake Multigrains")
rice_cake.photo.attach(io: file_rice_cake, filename: "lima_land_-_rice_cake_meergranen_100g_packshot_rgb_0_kfwjqr.jpg")

file_cashew = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1643469221/development/vd75pnia4pkxpjndfu46qghko8ry.jpg")
cashew_butter = Product.find_by_name("Cashew butter")
cashew_butter.photo.attach(io: file_cashew, filename: "vd75pnia4pkxpjndfu46qghko8ry.jpg")

file_strawberry = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1643973145/development/d1r2a9l2za7krbk37wca313yic92.jpg")
strawberry = Product.find_by_name("Strawberry")
# strawberry.photo.attach(io: file_strawberry, filename: "d1r2a9l2za7krbk37wca313yic92.jpg")
# Nicolas : cette photo faisait planter le rails db:seed, je l'ai commentée (erreur : undefined method "photo")

file_kale = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1643988026/development/kale_y7hv9e.jpg")
kale = Product.find_by_name("Kale")
# kale.photo.attach(io: file_kale, filename: "kale_y7hv9e.jpg")
# Nicolas : cette photo faisait planter le rails db:seed, je l'ai commentée (erreur : undefined method "photo")

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
  { name: "Kazidomi",
    group_name: "merchant"
  },
  { name: "Keto",
    group_name: "regime"
  },
  { name: "Fruit",
    group_name: "category"
  },
  { name: "Snack",
    group_name: "category"
  },
  { name: "Veggies",
    group_name: "category"
  },
  { name: "Protein",
    group_name: "category"
  }

])

puts "#{Tag.count} tags created!"


puts "Tagging product.."

ProductTag.create!([

  { product_id: (Product.first.id + 1),
    tag_id: Tag.first.id
  },
  { product_id: ( Product.first.id + 2),
    tag_id: (Tag.first.id + 1)
  },
  { product_id: ( Product.first.id + 3),
    tag_id: (Tag.first.id + 2)
  },
  { product_id: ( Product.first.id + 4),
    tag_id: (Tag.first.id + 3)
  },
  { product_id: ( Product.first.id + 2),
    tag_id: (Tag.first.id + 4)
  },
  { product_id: ( Product.first.id + 5),
    tag_id: (Tag.first.id + 5)
  },
  { product_id: ( Product.first.id + 6),
    tag_id: (Tag.first.id + 5)
  },
  { product_id: ( Product.first.id + 7),
    tag_id: (Tag.first.id + 6)
  },
  { product_id: ( Product.first.id + 8),
    tag_id: (Tag.first.id + 7)
  },
  { product_id: ( Product.first.id + 9),
    tag_id: (Tag.first.id + 8)
  }
])

puts "#{ProductTag.count} products tagged!"

puts "Creating previous shopping lists.."

List.create!([
   { date: (Date.today - 20),
     user_id: User.last.id },
   { date: (Date.today - 14),
     user_id: User.last.id },
   { date: (Date.today - 10),
     user_id: User.first.id },
   { date: (Date.today - 5),
     user_id: User.first.id }
])

ProductList.create!([
    { product_id: Product.first.id,
      list_id: List.first.id },
    { product_id: ( Product.first.id + 1 ),
      list_id: List.first.id
    },
    { product_id: ( Product.first.id + 4 ),
      list_id: ( List.first.id + 1 )
    },
    { product_id: ( Product.first.id + 2 ),
      list_id: ( List.first.id + 1 )
    },
    { product_id: ( Product.first.id + 3 ),
      list_id: ( List.first.id + 1 )
    },
    { product_id: ( Product.first.id + 1 ),
      list_id: ( List.first.id + 2 )
    },
    { product_id: ( Product.first.id + 6 ),
      list_id: ( List.first.id + 2 )
    },
    { product_id: ( Product.first.id + 7 ),
      list_id: ( List.first.id + 3 )
    }
])
