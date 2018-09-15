# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Start Seed"

puts 'Cleaning db...'
  Productor.destroy_all
  Customer.destroy_all
  Product.destroy_all
  Order.destroy_all
  OrderProduct.destroy_all
puts 'Cleaning done'

puts 'Starts Customer Creation'
  u1 = Customer.create(email: "myperigord@gmail.com", password: "azerty", first_name: "My", last_name: "Perigord", address: "Rue du Fois Gras, 33560 Perigord", phone: "0345678923")
  u2 = Customer.create(email: "henri.dupuis@gmail.com", password: "azerty", first_name: "Henri", last_name: "Dupuis", address: "Rue du Lac, 33560 Riberac", phone: "0345678923")
puts 'End'

puts 'Starts Producer Creation'
  p1 = Productor.create(
    email: "contact@brasseriedusudouest.com",
    password: "azerty", first_name: "George",
    last_name:"Voucher",
    address: "ZA Bernard Moulinet 24700 Montpon",
    phone:"09.84.46.06.98",
    compagny: "Brasserie du Sud Ouest", description: "Vente de Bières", website:"https://brasseriedusudouest.com/", quote: "La bière par excellence!",productor_banner: "https://i0.wp.com/brasseriedusudouest.com/wp-content/uploads/2017/12/Image-acc_1.jpg?resize=1024%2C406&ssl=1", avatar: "https://images.sudouest.fr/2017/12/16/5a3486fc66a4bd731e62c79d/widescreen/1000x500/yoann-delibie-et-jonathan-krumhorn-proposent-de-la-biere-artisanale.jpg")
  p2 = Productor.create(email: "contact@lordesanges.com", password: "azerty", first_name: "Lors", last_name:"Desanges", address: "“Le Repaire”F-24320 VERTEILLAC", phone: "+33.612 476 881", compagny: "L'Or des Anges", description: "Vente de Truffes et Safrana", website:"http://www.lordesanges.com/", quote: "Connaissez vous l'or rouge du Perigord ?", productor_banner: "http://www.lordesanges.com/wp-content/uploads/2016/05/Le-Repaire.jpg", avatar: "https://scontent-frt3-2.xx.fbcdn.net/v/t1.0-9/39869127_1674978715961988_3141436077835812864_n.jpg?_nc_cat=0&oh=5f78452e6c39df4d5857bd2047098419&oe=5C250177")
  p3 = Productor.create(email: "lechocolatdanstousnosetats@gmail.com", password: "azerty", first_name: "Herve", last_name:"Robin", address: "ZA Bernard Moulinet 24700 Montpon ", phone:"0345678906", compagny: "Hervé Robin Chocolatier", description: "Vente de Chocolat", website:"https://lechocolatdanstousnosetats.com/", quote: "Et si on nous croquait ?", productor_banner: "http://lescomptoirsducafe.fr/wp-content/uploads/2016/12/20161201_101055.jpg", avatar: "http://www.247lemag.fr/wp-content/uploads/2017/12/lmazalrey-2947-copie-300x200.jpg")
  p4 = Productor.create(email: "verdots@wanadoo.fr", password: "azerty", first_name: "David", last_name:"Fourtout", address: "F-24560 Conne de Labarde", phone:"05 53 58 34 31", compagny: "Les Verdots", description: "Vente de Vins", website:"http://www.verdots.com/", quote: "Un site unique au coeur des vignes", productor_banner: "http://www.vin-verdots-bergerac.com/wp-content/uploads/2014/03/slide-chateau-01.jpg", avatar: "http://www.vin-verdots-bergerac.com/wp-content/uploads/2013/10/sidebar-david-fourtout-335px.jpg")
  p5 = Productor.create(email: "berna@wanadoo.fr", password: "azerty", first_name: "Marie-line", last_name:"Berna", address: "Domaine de Roudigou 47 500 Cuzorn", phone:"05 53 75 16 10", compagny: "Le Domaine de Roudigou", description: "Gîte et Vente de Pruneaux", website:"http://www.domainederoudigou.com/", quote: "Au coeur du domaine familial de 50ha de vergers", productor_banner: "http://www.domainederoudigou.com/files/slider-home/gite-de-roudrigou2.jpg", avatar: "https://www.gites-de-france-47.com/photos/gites47/G/proprietaire/3110_150_150.jpg")
puts 'End'

puts 'Starts Product Creation'
  po1 = Product.create!(name: "La Wanted", description: "A mi-chemin entre culture américaine et nippone, la golden ale n’en oublie pas moins ses racines périgourdines et vous fera voyager avec ses saveurs d’agrumes, de fruits jaune et même de noix de coco !", photo: "https://i0.wp.com/brasseriedusudouest.com/wp-content/uploads/2017/12/La_Wanted_Golden_Ale_boutique.png?resize=300%2C300&ssl=1", price: 235, productor: p1)
  po2 = Product.create(name: "Hop Blanche", description: "La Hop Blanche est une bière de fermentation haute.Bière estivale par excellence. Sa faible amertume et sa légèreté vous laisserons découvrir sa fraicheur aromatique aux notes de fruits jaunes.", photo: "https://i1.wp.com/brasseriedusudouest.com/wp-content/uploads/2018/06/Hop_blanche.png?resize=300%2C300&ssl=1", price: 245, productor: p1)
  po3 = Product.create(name: "Hop Pale Ale", description: "Cette Pale ale single HOP, est une bière blonde de haute fermentation facile à boire.Brassée le plus simplement avec 3 malts et un seul houblon cette bière n’en demeure pas moins unique et saura combler vos moindres envies maltées !", photo: "https://i2.wp.com/brasseriedusudouest.com/wp-content/uploads/2018/06/Hop_pale_ale_boutique.png?resize=300%2C300&ssl=1", price: 345, productor: p1)
  po4 = Product.create(name: "Vin Verdots Bergerac", description: "Sélection des cuvées les plus harmonieuses, aux tanins souples et soyeux, issu de Merlot, Cabernet Sauvignon et de Malbec." , photo: "http://www.vin-verdots-bergerac.com/wp-content/uploads/2015/02/clos-rouge-400px.jpg", price: 1657, productor: p4)
  po5 = Product.create(name: "Tours Monbazillac", description: "Argilo-siliceux sur marne et calcaire de Monbazillac. Ce sol permet de produire une très grande concentration apportée entre autres par le Botrytis Cinerea et une belle fraîcheur qui donne l’originalité des grands Monbazillac.", photo: "http://www.vin-verdots-bergerac.com/wp-content/uploads/2015/02/tours-monbazillac-400px.jpg", price: 1567, productor: p4)
  po6 = Product.create(name: "Vin Blanc Sec" , description: "Assemblage de 4 terroirs très différents qui en font son originalité, à savoir-sablo-limono-argileux sur molasse du Fronsadais qui donne toute la puissance aromatique,-argilo-calcaire sur calcaire de type ondes qui donne au vin toute sa puissance en bouche,-limoneux-sableux de plateau riche en fer qui donne la structure,-limoneux-argileux-graveleux de pente sur calcaire de Castillon qui donne une belle acidité et de la longueur en bouche." , photo: "http://www.vin-verdots-bergerac.com/wp-content/uploads/2015/02/le-vin-selon-blanc-sec-400px.jpg", price: 1245, productor: p4)
  po7 = Product.create(name: "Pruneaux", description: "Des pruneaux Bio ou conventionnels", photo: "http://gourmetpedia.org/media/upload/ingredient/693.jpg", price: 380, productor: p5)
  po8 = Product.create(name: "Pruneaux à l'eau de vie", description: "Pruneaux" , photo: "https://flaveur.ch/alcool/1708-large_default/pruneaux-%C3%A0-l-eau-de-vie-15kg.jpg", price: 534, productor: p5)
  po9 = Product.create(name: "Confiture de pruneaux" , description: "Confiture Bio", photo: "http://www.dessertsetconfitures.com/var/dessert/storage/images/media/images/confiture-de-prune2/12348-1-fre-FR/Confiture-de-prune_recette.jpg", price: 456, productor: p5)
  po10 = Product.create(name: "Sphére ChocoOr", description: "Delicieuse sphère finalement chocolatée à feuilles d'or", photo: "https://lechocolatdanstousnosetats.com/wp-content/uploads/2016/12/IMG_0091-1024x1024.jpg", price: 1850, productor: p3)
  po11 = Product.create(name: "Safran", description: "Safran pure", photo: "http://www.lordesanges.com/wp-content/uploads/2016/05/safran-principale.jpg", price: 1990, productor: p2)
  po12 = Product.create(name: "Truffes Extra Brossés", description: "Consommée depuis l’Antiquité, il a fallu attendre Brillat-Savarin pour que la truffe du Périgord obtienne ses lettres de noblesse en cuisine. La Tuber Melanosporum, dite du Périgord, ne peut laisser indifférent ; son parfum puissant est incomparable, son goût unique. Ainsi elle agrémente tout ce qui entre en contact avec elle.", photo: "http://www.lordesanges.com/wp-content/uploads/2015/11/slide-accueil-0001.jpg", price: 1580, productor: p2)
puts 'End'

puts 'Starts Order Creation'
  o1 = Order.create(customer: u2)
  o2 = Order.create(customer: u1)
  o3 = Order.create(customer: u2)
puts 'End'

puts 'Starts OrderProducts Creation'
  op1 = OrderProduct.create(product: po8, order: o1, quantity: 2, price: 534)
  op2 = OrderProduct.create(product: po1, order: o1, quantity: 1, price: 235)
  op3 = OrderProduct.create(product: po5, order: o1, quantity: 3, price: 1567)
  op4 = OrderProduct.create(product: po6, order: o1, quantity: 1, price: 1245)

  op4 = OrderProduct.create(product: po2, order: o2, quantity: 1, price: 245)
  op4 = OrderProduct.create(product: po4, order: o2, quantity: 4, price: 1657)
  op4 = OrderProduct.create(product: po10, order: o2, quantity: 1, price: 1850)

  op4 = OrderProduct.create(product: po3, order: o3, quantity: 2, price: 345)
  op4 = OrderProduct.create(product: po7, order: o3, quantity: 1, price: 380)
  op4 = OrderProduct.create(product: po11, order: o3, quantity: 1, price: 1990)
puts 'End'
