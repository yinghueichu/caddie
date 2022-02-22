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
  # { name: "Peanut butter",
  #   frequency: 28,
  #   user_id: User.first.id
  # },
  # { name: "Pâte à tartiner",
  #   frequency: 28,
  #   user_id: User.first.id
  # },
  # { name: "Banana",
  #   frequency: 7,
  #   user_id: ( User.first.id + 1)
  # },
  # { name: "Soy milk",
  #   frequency: 7,
  #   user_id: ( User.first.id + 1)
  # },
  # { name: "Rice cake Multigrains",
  #   frequency: 14,
  #   user_id: User.first.id
  # },
  # { name: "Cashew butter",
  #   frequency: 14,
  #   user_id: ( User.first.id + 2)
  # },
  # { name: "Asperges",
  #   user_id: User.first.id
  # },
  # { name: "Aubergines",
  #   user_id: User.first.id
  # },
#fruits
  { name: "Abricot",
    user_id: User.first.id
  },
  { name: "Ananas",
    user_id: User.first.id
  },
  { name: "Avocat",
    user_id: User.first.id
  },
  { name: "Banane",
    frequency: 7,
    user_id: User.first.id
  },
  { name: "Cerise",
    user_id: User.first.id
  },
  { name: "Citron",
    user_id: User.first.id
  },
  { name: "Citron vert",
    user_id: User.first.id
  },
  { name: "Figue",
    user_id: User.first.id
  },
  { name: "Fraise",
    user_id: User.first.id
  },
  { name: "Framboise",
    user_id: User.first.id
  },
  { name: "Kiwi",
    user_id: User.first.id
  },
  { name: "Madarine",
    user_id: User.first.id
  },
  { name: "Mangue",
    user_id: User.first.id
  },
  { name: "Melon",
    user_id: User.first.id
  },
  { name: "Mûre",
    user_id: User.first.id
  },
  { name: "Myrtille",
    user_id: User.first.id
  },
  { name: "Nectarine",
    user_id: User.first.id
  },
  { name: "Noix de coco",
    user_id: User.first.id
  },
  { name: "Orange",
    user_id: User.first.id
  },
  { name: "Pêche",
    user_id: User.first.id
  },
  { name: "Poire",
    user_id: User.first.id
  },
  { name: "Asperges",
    user_id: User.first.id
  },
  { name: "Aubergines",
    user_id: User.first.id
  },
  { name: "Pomme",
    user_id: User.first.id
  },
  { name: "Prune",
    user_id: User.first.id
  },
  { name: "Raisin",
    user_id: User.first.id
  },
  #produits qui commencent par Sa
  { name: "Saumon",
    user_id: User.first.id
  },
  { name: "Sacs poubelle",
    frequency: 7,
    user_id: User.first.id
  },
  { name: "Savon",
    user_id: User.first.id
  },
  { name: "Salade",
    user_id: User.first.id
  },
  { name: "Saucisses",
    user_id: User.first.id
  },
  { name: "Saucisson",
    user_id: User.first.id
  },
  { name: "Sauce tomate",
    user_id: User.first.id
  }
])

require "open-uri"

#fruits

file_abricot = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1645553243/Abricot_bis_ka2pwb.jpg")
abricot = Product.find_by_name("Abricot")
abricot.photo.attach(io: file_abricot, filename: "Abricot_bis_ka2pwb.jpg")

file_ananas = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644667656/development/Ananas_wzyti1.jpg")
ananas = Product.find_by_name("Ananas")
ananas.photo.attach(io: file_ananas, filename: "Ananas_wzyti1.jpg")

file_avocat = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644667656/development/Avocat_shi537.jpg")
avocat = Product.find_by_name("Avocat")
avocat.photo.attach(io: file_avocat, filename: "Avocat_shi537.jpg")

file_banane = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644667657/development/Banane_os7847.jpg")
banane = Product.find_by_name("Banane")
banane.photo.attach(io: file_banane, filename: "Banane_os7847.jpg")

file_cerise = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644667657/development/Cerise_s9kysr.jpg")
cerise = Product.find_by_name("Cerise")
cerise.photo.attach(io: file_cerise, filename: "Cerise_s9kysr.jpg")

file_citron = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644667654/development/Citron_o68gi7.jpg")
citron = Product.find_by_name("Citron")
citron.photo.attach(io: file_citron, filename: "Citron_o68gi7.jpg")

file_citron_vert = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644667655/development/Citron_vert_yjjpqj.jpg")
citron_vert = Product.find_by_name("Citron vert")
citron_vert.photo.attach(io: file_citron_vert, filename: "Citron_vert_yjjpqj.jpg")

file_figue = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644667654/development/Figue_zn2tkn.jpg")
figue = Product.find_by_name("Figue")
figue.photo.attach(io: file_figue, filename: "Figue_zn2tkn.jpg")

file_fraise = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644667654/development/Fraise_r5nbe1.jpg")
fraise = Product.find_by_name("Fraise")
fraise.photo.attach(io: file_fraise, filename: "Fraise_r5nbe1.jpg")

file_framboise = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644667654/development/Framboise_nlwsmz.jpg")
framboise = Product.find_by_name("Framboise")
framboise.photo.attach(io: file_framboise, filename: "Framboise_nlwsmz.jpg")

file_kiwi = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644667654/development/Kiwi_yfb0vf.jpg")
kiwi = Product.find_by_name("Kiwi")
kiwi.photo.attach(io: file_kiwi, filename: "Kiwi_yfb0vf.jpg")

file_mangue = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644667654/development/Mangue_vkjndl.jpg")
mangue = Product.find_by_name("Mangue")
mangue.photo.attach(io: file_mangue, filename: "Mangue_vkjndl.jpg")

file_melon = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644667655/development/Melon_n6zrly.jpg")
melon = Product.find_by_name("Melon")
melon.photo.attach(io: file_melon, filename: "Melon_n6zrly.jpg")

file_mure = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644667654/development/Mure_wfir39.jpg")
mure = Product.find_by_name("Mûre")
mure.photo.attach(io: file_mure, filename: "Mure_wfir39.jpg")

file_myrtille = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644667655/development/Myrtille_rq1i18.jpg")
myrtille = Product.find_by_name("Myrtille")
myrtille.photo.attach(io: file_myrtille, filename: "Myrtille_rq1i18.jpg")

file_nectarine = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644667655/development/Nectarine_e2rve0.jpg")
nectarine = Product.find_by_name("Nectarine")
nectarine.photo.attach(io: file_nectarine, filename: "Nectarine_e2rve0.jpg")

file_coco = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644667655/development/Noix_de_coco_evq4qu.jpg")
coco = Product.find_by_name("Noix de coco")
coco.photo.attach(io: file_coco, filename: "Noix_de_coco_evq4qu.jpg")

file_orange = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644667655/development/Orange_pprjfr.jpg")
orange = Product.find_by_name("Orange")
orange.photo.attach(io: file_orange, filename: "Orange_pprjfr.jpg")

file_peche = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644667656/development/Peche_p1926j.jpg")
peche = Product.find_by_name("Pêche")
peche.photo.attach(io: file_peche, filename: "Peche_p1926j.jpg")

file_poire = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644667656/development/Poire_ykxj2x.jpg")
poire = Product.find_by_name("Poire")
poire.photo.attach(io: file_poire, filename: "Poire_ykxj2x.jpg")

file_pomme = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644667656/development/Pomme_sftxin.jpg")
pomme = Product.find_by_name("Pomme")
pomme.photo.attach(io: file_pomme, filename: "Pomme_sftxin.jpg")

file_prune = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644667656/development/Prune_xsfzre.jpg")
prune = Product.find_by_name("Prune")
prune.photo.attach(io: file_prune, filename: "Prune_xsfzre.jpg")

file_raisin = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644667656/development/Raisin_yzaete.jpg")
raisin = Product.find_by_name("Raisin")
raisin.photo.attach(io: file_raisin, filename: "Raisin_yzaete.jpg")

#produits qui commencent par "Sa" pour la démo ;)

file_saumon = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644826680/development/Saumon_jpsitg.jpg")
saumon = Product.find_by_name("Saumon")
saumon.photo.attach(io: file_saumon, filename: "Saumon_jpsitg.jpg")

file_sac = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644826680/development/Sac_gizamd.jpg")
sac = Product.find_by_name("Sacs poubelle")
sac.photo.attach(io: file_sac, filename: "Sac_gizamd.jpg")

file_savon = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644825642/development/nst5bhzkd44u8hfp4vacnpkw3de9.jpg")
savon = Product.find_by_name("Savon")
savon.photo.attach(io: file_savon, filename: "nst5bhzkd44u8hfp4vacnpkw3de9.jpg")

file_salade = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644826680/development/salade_ydpprz.jpg")
salade = Product.find_by_name("Salade")
salade.photo.attach(io: file_salade, filename: "salade_ydpprz.jpg")

file_saucisse = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644826680/development/saucisse_fpov50.jpg")
saucisse = Product.find_by_name("Saucisses")
saucisse.photo.attach(io: file_saucisse, filename: "saucisse_fpov50.jpg")

file_saucisson = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644827735/development/saucisson_bis_kxwqzm.jpg")
saucisson = Product.find_by_name("Saucisson")
saucisson.photo.attach(io: file_saucisson, filename: "saucisson_bis_kxwqzm.jpg")

file_sauce = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644826680/development/sauce_tomate_x9uxno.jpg")
sauce = Product.find_by_name("Sauce tomate")
sauce.photo.attach(io: file_sauce, filename: "sauce_tomate_x9uxno.jpg")



#others

# file_peanut_butter = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1643975814/development/peanut_butter_gybb0k.jpg")
# peanut_butter = Product.find_by_name("Peanut butter")
# peanut_butter.photo.attach(io: file_peanut_butter, filename: "peanut_butter_gybb0k.jpg")

# file_pate = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1643975607/development/pate_ktf9io.jpg")
# pate_a_tartiner = Product.find_by_name("Pâte à tartiner")
# pate_a_tartiner.photo.attach(io: file_pate, filename: "pate_ktf9io.jpg")

# file_banana = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1643975422/development/banana_gsgdc5.jpg")
# banana = Product.find_by_name("Banana")
# banana.photo.attach(io: file_banana, filename: "banana_gsgdc5.jpg")

# file_soy_milk = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1643975281/development/soy_milk_rhl5s2.jpg")
# soy_milk = Product.find_by_name("Soy milk")
# soy_milk.photo.attach(io: file_soy_milk, filename: "soy_milk_rhl5s2.jpg")

# file_rice_cake = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1643975115/development/lima_land_-_rice_cake_meergranen_100g_packshot_rgb_0_kfwjqr.jpg")
# rice_cake = Product.find_by_name("Rice cake Multigrains")
# rice_cake.photo.attach(io: file_rice_cake, filename: "lima_land_-_rice_cake_meergranen_100g_packshot_rgb_0_kfwjqr.jpg")

# file_cashew = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1643469221/development/vd75pnia4pkxpjndfu46qghko8ry.jpg")
# cashew_butter = Product.find_by_name("Cashew butter")
# cashew_butter.photo.attach(io: file_cashew, filename: "vd75pnia4pkxpjndfu46qghko8ry.jpg")

# file_strawberry = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1643973145/development/d1r2a9l2za7krbk37wca313yic92.jpg")
# strawberry = Product.find_by_name("Strawberry")
# # strawberry.photo.attach(io: file_strawberry, filename: "d1r2a9l2za7krbk37wca313yic92.jpg")
# # Nicolas : cette photo faisait planter le rails db:seed, je l'ai commentée (erreur : undefined method "photo")

# file_kale = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1643988026/development/kale_y7hv9e.jpg")
# kale = Product.find_by_name("Kale")
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
  { name: "Fruits",
    group_name: "category"
  },
  { name: "Légumes",
    group_name: "category"
  },
  { name: "Viande",
    group_name: "category"
  },
  { name: "Poisson",
    group_name: "category"
  },
  { name: "Produits laitier",
    group_name: "category"
  },
  { name: "Boulangerie",
    group_name: "category"
  },
  { name: "Boissons",
    group_name: "category"
  },
  { name: "Produits en conserve",
    group_name: "category"
  },
  { name: "Petit déjeuner",
    group_name: "category"
  },
  { name: "Féculents",
    group_name: "category"
  },
  { name: "Produits surgelés",
    group_name: "category"
  },
  { name: "Epices",
    group_name: "category"
  },
  { name: "Produits d'entretien",
    group_name: "category"
  },
  { name: "Hygiène/beauté",
    group_name: "category"
  },
  { name: "Animaux",
    group_name: "category"
  },
  { name: "All",
    group_name: "all"
  }

])

puts "#{Tag.count} tags created!"

#categories
file_fruits = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644667656/development/Pomme_sftxin.jpg")
fruits = Tag.find_by_name("Fruits")
fruits.photo.attach(io: file_fruits, filename: "Pomme_sftxin.jpg")

file_legumes = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644685085/development/pdt_jvyrky.jpg")
legumes = Tag.find_by_name("Légumes")
legumes.photo.attach(io: file_legumes, filename: "pdt_jvyrky.jpg")

file_viande = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644683072/development/Viande_ai3pcl.jpg")
viande = Tag.find_by_name("Viande")
viande.photo.attach(io: file_viande, filename: "Viande_ai3pcl.jpg")

file_poisson = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644683072/development/Poisson_jrfibk.jpg")
poisson = Tag.find_by_name("Poisson")
poisson.photo.attach(io: file_poisson, filename: "Poisson_jrfibk.jpg")

file_laitier = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644683072/development/Produit_laitier_qok3ze.jpg")
laitier = Tag.find_by_name("Produits laitier")
laitier.photo.attach(io: file_laitier, filename: "Produit_laitier_qok3ze.jpg")

file_boulangerie = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644683072/development/Boulangerie_ncfuuo.jpg")
boulangerie = Tag.find_by_name("Boulangerie")
boulangerie.photo.attach(io: file_boulangerie, filename: "Boulangerie_ncfuuo.jpg")

file_boisson = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644683072/development/Boisson_bleyle.jpg")
boisson = Tag.find_by_name("Boissons")
boisson.photo.attach(io: file_boisson, filename: "Boisson_bleyle.jpg")

file_conserve = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644685442/development/conservebis_mvbhbd.jpg")
conserve = Tag.find_by_name("Produits en conserve")
conserve.photo.attach(io: file_conserve, filename: "conservebis_mvbhbd.jpg")

file_petitdej = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644683071/development/Petit_d%C3%A9jeuner_ddyjbl.jpg")
petitdej = Tag.find_by_name("Petit déjeuner")
petitdej.photo.attach(io: file_petitdej, filename: "Petit_d%C3%A9jeuner_ddyjbl.jp")

file_feculent = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644683071/development/feculent_dhn6mh.jpg")
feculent = Tag.find_by_name("Féculents")
feculent.photo.attach(io: file_feculent, filename: "feculent_dhn6mh.jpg")

file_surgele = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644683071/development/produit_surgel%C3%A9_ei6vef.jpg")
surgele = Tag.find_by_name("Produits surgelés")
surgele.photo.attach(io: file_surgele, filename: "produit_surgel%C3%A9_ei6vef.jpg")

file_epice = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644683071/development/epices_fgldq5.jpg")
epice = Tag.find_by_name("Epices")
epice.photo.attach(io: file_epice, filename: "epices_fgldq5.jpg")

file_entretien = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644683071/development/entretien_jlzoab.png")
entretien = Tag.find_by_name("Produits d'entretien")
entretien.photo.attach(io: file_entretien, filename: "entretien_jlzoab.png")

file_beaute = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644683072/development/Beaut%C3%A9_uiwiig.jpg")
beaute = Tag.find_by_name("Hygiène/beauté")
beaute.photo.attach(io: file_beaute, filename: "Beaut%C3%A9_uiwiig.jpg")

file_animaux = URI.open("https://res.cloudinary.com/yinghueichu/image/upload/v1644685582/development/animauxbis_byozws.jpg")
animaux = Tag.find_by_name("Animaux")
animaux.photo.attach(io: file_animaux, filename: "animauxbis_byozws.jpg")

puts "Tagging product.."

ProductTag.create!([
  # { product_id: ( Product.first.id + 1),
  #   tag_id: Tag.first.id
  # },
  # { product_id: ( Product.first.id + 2),
  #   tag_id: (Tag.first.id + 1)
  # },
  # { product_id: ( Product.first.id + 3),
  #   tag_id: (Tag.first.id + 2)
  # },
  # { product_id: ( Product.first.id + 4),
  #   tag_id: (Tag.first.id + 3)
  # },
  # { product_id: ( Product.first.id + 2),
  #   tag_id: (Tag.first.id + 4)
  # },
  # { product_id: ( Product.first.id + 5),
  #   tag_id: (Tag.first.id + 5)
  # },
  # { product_id: ( Product.first.id + 6),
  #   tag_id: (Tag.first.id + 5)
  # },
  # { product_id: ( Product.first.id + 7),
  #   tag_id: (Tag.first.id + 6)
  # },
  # { product_id: ( Product.first.id + 8),
  #   tag_id: (Tag.first.id + 7)
  # },
  # { product_id: ( Product.first.id + 9),
  #   tag_id: (Tag.first.id + 8)
  # },

  #fruits
  { product_id: (Product.find_by_name("Abricot").id),
    tag_id: (Tag.find_by_name("Fruits").id)
  },
  { product_id: (Product.find_by_name("Ananas").id),
    tag_id: (Tag.find_by_name("Fruits").id)
  },
  { product_id: (Product.find_by_name("Avocat").id),
    tag_id: (Tag.find_by_name("Fruits").id)
  },
  { product_id: (Product.find_by_name("Banane").id),
    tag_id: (Tag.find_by_name("Fruits").id)
  },
  { product_id: (Product.find_by_name("Cerise").id),
    tag_id: (Tag.find_by_name("Fruits").id)
  },
  { product_id: (Product.find_by_name("Citron").id),
    tag_id: (Tag.find_by_name("Fruits").id)
  },
    { product_id: (Product.find_by_name("Citron vert").id),
    tag_id: (Tag.find_by_name("Fruits").id)
  },
  { product_id: (Product.find_by_name("Figue").id),
    tag_id: (Tag.find_by_name("Fruits").id)
  },
  { product_id: (Product.find_by_name("Fraise").id),
    tag_id: (Tag.find_by_name("Fruits").id)
  },
  { product_id: (Product.find_by_name("Framboise").id),
    tag_id: (Tag.find_by_name("Fruits").id)
  },
  { product_id: (Product.find_by_name("Kiwi").id),
    tag_id: (Tag.find_by_name("Fruits").id)
  },
  { product_id: (Product.find_by_name("Melon").id),
    tag_id: (Tag.find_by_name("Fruits").id)
  },
  { product_id: (Product.find_by_name("Mûre").id),
    tag_id: (Tag.find_by_name("Fruits").id)
  },
  { product_id: (Product.find_by_name("Myrtille").id),
    tag_id: (Tag.find_by_name("Fruits").id)
  },
  { product_id: (Product.find_by_name("Nectarine").id),
    tag_id: (Tag.find_by_name("Fruits").id)
  },
  { product_id: (Product.find_by_name("Noix de coco").id),
    tag_id: (Tag.find_by_name("Fruits").id)
  },
  { product_id: (Product.find_by_name("Orange").id),
    tag_id: (Tag.find_by_name("Fruits").id)
  },
  { product_id: (Product.find_by_name("Pêche").id),
    tag_id: (Tag.find_by_name("Fruits").id)
  },
  { product_id: (Product.find_by_name("Poire").id),
    tag_id: (Tag.find_by_name("Fruits").id)
  },
  { product_id: (Product.find_by_name("Pomme").id),
    tag_id: (Tag.find_by_name("Fruits").id)
  },
  { product_id: (Product.find_by_name("Prune").id),
    tag_id: (Tag.find_by_name("Fruits").id)
  },
  { product_id: (Product.find_by_name("Raisin").id),
    tag_id: (Tag.find_by_name("Fruits").id)
  },
  #produits qui commencent par Sa
  { product_id: (Product.find_by_name("Saumon").id),
    tag_id: (Tag.find_by_name("Poisson").id)
  },
  { product_id: (Product.find_by_name("Sacs poubelle").id),
    tag_id: (Tag.find_by_name("Produits d'entretien").id)
  },
  { product_id: (Product.find_by_name("Savon").id),
    tag_id: (Tag.find_by_name("Hygiène/beauté").id)
  },
  { product_id: (Product.find_by_name("Salade").id),
    tag_id: (Tag.find_by_name("Légumes").id)
  },
  { product_id: (Product.find_by_name("Saucisses").id),
    tag_id: (Tag.find_by_name("Viande").id)
  },
  { product_id: (Product.find_by_name("Saucisson").id),
    tag_id: (Tag.find_by_name("Viande").id)
  },
  { product_id: (Product.find_by_name("Sauce tomate").id),
    tag_id: (Tag.find_by_name("Produits en conserve").id)
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
