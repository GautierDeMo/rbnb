require "open-uri"

puts "Deleting all..."
Booking.destroy_all
Review.destroy_all
Dream.destroy_all
User.destroy_all

puts "Adding user#1..."

@user1 = User.create!(
  email: "admin@admin",
  password: "adminadmin",
  password_confirmation: "adminadmin",
  username: "itsjack",
)

file1 = URI.open("https://res.cloudinary.com/durjoyq8p/image/upload/v1741348891/airbnb-dreams/qexla3sitypbap9j14pp.jpg")
@user1.photo.attach(io: file1, filename: "user1.jpg", content_type: "image/jpg")

puts "User#{@user1[:id]} - @#{@user1[:username]} is now in the database!✅"

puts "Adding user#2..."

@user2 = User.create!(
  email: "julien@email.com",
  password: "adminadmin",
  password_confirmation: "adminadmin",
  username: "itsjulien",
)

file2 = URI.open("https://res.cloudinary.com/durjoyq8p/image/upload/v1741348890/airbnb-dreams/gdtfbkmds5xalfakaccj.avif")
@user2.photo.attach(io: file2, filename: "user2.avif", content_type: "image/avif")

puts "User#{@user2[:id]} - @#{@user2[:username]} is now in the database! ✅"

puts "Adding user#3..."

@user3 = User.create!(
  email: "carla@email.com",
  password: "adminadmin",
  password_confirmation: "adminadmin",
  username: "itscarla",
)

file3 = URI.open("https://res.cloudinary.com/durjoyq8p/image/upload/v1741348889/airbnb-dreams/mnblawgipsvadh5eb8hp.avif")
@user3.photo.attach(io: file3, filename: "user3.avif", content_type: "image/avif")

puts "User#{@user3[:id]} - @#{@user3[:username]} is now in the database! ✅"

puts "Adding new dreams..."

dreams = [
  {
    title: "Le Train des Mondes Oubliés",
    description: "Vous montez à bord d’un train sans destination connue. À chaque arrêt, une porte s’ouvre sur un monde différent : une ville suspendue dans le ciel, une jungle aux arbres phosphorescents, un désert où les étoiles tombent comme de la neige... Chaque fois que vous descendez, vous oubliez d’où vous venez, mais une sensation de déjà-vu vous envahit.",
    picture: "https://res.cloudinary.com/durjoyq8p/image/upload/v1741115744/airbnb-dreams/gvluuqo7wvhvx9yrvddp.webp",
    category: "Aventure",
    price: 5,
    address: "Darvaza Gas Crater, Karakum Desert, Turkmenistan",
    user_id: @user3.id
  },
  {
    title: "La Ville qui Chante",
    description: "Vous déambulez dans une ville où chaque rue produit une mélodie, et où les immeubles murmurent leurs souvenirs. Les pavés résonnent sous vos pas comme un piano géant. Lorsque vous parlez, votre voix devient une note de musique. Serez-vous le chef d’orchestre ou un simple spectateur de cette symphonie nocturne ?",
    picture: "https://res.cloudinary.com/durjoyq8p/image/upload/v1741115735/airbnb-dreams/qxir6bjalajc5kwquugy.webp",
    category: "Fantastique",
    price: 2,
    address: "Reed Flute Cave, 1 Ludi Rd, Xiufeng District, Guilin, Guangxi, China",
    user_id: @user3.id
  },
  {
    title: "L’Île aux Souvenirs Perdus",
    description: "Vous vous réveillez sur une île où le sable est fait de montres cassées et où les vagues chuchotent des histoires oubliées. Chaque objet trouvé sur la plage est un fragment de mémoire, mais... sont-ce les vôtres ou celles d’un autre rêveur ?",
    picture: "https://res.cloudinary.com/durjoyq8p/image/upload/v1741115746/airbnb-dreams/zze0xmofwoeptalbc4zw.webp",
    category: "Nostalgie",
    price: 6,
    address: "Socotra Island, Hadibu, Yemen",
    user_id: @user3.id
  },
  {
    title: "Le Grand Bal des Ombres",
    description: "Un immense bal masqué où les danseurs sont des ombres en mouvement. Personne ne parle, mais vous comprenez leurs pensées à travers la danse. Soudain, l’orchestre s’arrête, et tous les regards se tournent vers vous… Vous êtes le personnage principal de cette énigme onirique.",
    picture: "https://res.cloudinary.com/durjoyq8p/image/upload/v1741115747/airbnb-dreams/sldvhgvdyuwlpzaqyohg.webp",
    category: "Surréaliste",
    price: 4,
    address: "Palais Idéal, 8 Rue du Palais, 26390 Hauterives, France",
    user_id: @user3.id
  },
  {
    title: "La Chute Infinie",
    description: "Vous tombez, mais tout est paisible. Autour de vous, des fragments de souvenirs flottent, suspendus dans l’air. Vous voyez des portes ouvertes au milieu du ciel : certaines mènent à des forêts, d’autres à des bibliothèques flottantes ou à des ruines extraterrestres. À vous de choisir où atterrir… ou de continuer à chuter.",
    picture: "https://res.cloudinary.com/durjoyq8p/image/upload/v1741115747/airbnb-dreams/shpq0f8jhrv4mhpzxxuj.webp",
    category: "Valley of Geysers, Kamchatka Krai, Russia",
    price: 5,
    address: "5 Rue des Fleurs, Nice",
    user_id: @user1.id
  },
  {
    title: "Le Marché des Émotions",
    description: "Un marché étrange où les émotions se vendent sous forme de fioles lumineuses. Vous pouvez y acheter de la joie pure, échanger un souvenir contre un soupçon de nostalgie, ou goûter à un frisson d’aventure.",
    picture: "https://res.cloudinary.com/durjoyq8p/image/upload/v1741115776/airbnb-dreams/cqoatqqodhdtjysbaswy.webp",
    category: "Fantastique",
    price: 7,
    address: "Marrakech Souk, Medina, Marrakech, Morocco",
    user_id: @user1.id
  },
  {
    title: "Les Rues du Temps",
    description: "Vous déambulez dans une ville où chaque rue vous ramène à une époque différente de votre vie. Lorsque vous franchissez une ruelle, vous êtes soudain enfant ; un autre passage vous transporte dans votre futur.",
    picture: "https://res.cloudinary.com/durjoyq8p/image/upload/v1741115770/airbnb-dreams/kagvjrlwkoxw18zciwf2.webp",
    category: "Exploration",
    price: 6,
    address: "San Gimignano, Tuscany, Italy",
    user_id: @user1.id
  },
  {
    title: "L’Océan des Étoiles",
    description: "Un océan où chaque vague est une galaxie et où les profondeurs cachent des civilisations oubliées. Vous flottez dans cette mer cosmique, écoutant les échos d’histoires venues d’un autre temps.",
    picture: "https://res.cloudinary.com/durjoyq8p/image/upload/v1741115776/airbnb-dreams/obmkiipjbdrpincxcxcc.webp",
    category: "Science-fiction",
    price: 8,
    address: "Vaadhoo Island, Raa Atoll, Maldives",
    user_id: @user1.id
  },
  {
    title: "Le Cirque des Merveilles",
    description: "Un cirque où les lois de la physique n’existent pas. Les acrobates flottent dans l’air, les magiciens jouent avec le temps et chaque numéro dévoile une part de votre inconscient.",
    picture: "https://res.cloudinary.com/durjoyq8p/image/upload/v1741115774/airbnb-dreams/r8h9ukq6hl57flzk61tf.webp",
    category: "Expérience immersive",
    price: 7,
    address: "Cirque du Soleil, Montreal, Canada",
    user_id: @user1.id
  },
  {
    title: "La Forêt des Murmures",
    description: "Une forêt enchantée où chaque arbre chuchote une histoire. Si vous posez votre oreille contre l’écorce, vous pouvez entendre des récits d’anciens rêveurs, ou peut-être même vos propres souvenirs oubliés.",
    picture: "https://res.cloudinary.com/durjoyq8p/image/upload/v1741115772/airbnb-dreams/xtcjwnc6jcbp8azcnyip.webp",
    category: "Relaxant",
    price: 5,
    address: "Crooked Forest, Nowe Czarnowo, 74-105 Gryfino, Poland",
    user_id: @user1.id
  },
  {
    title: "Le Lac des Réflexions",
    description: "Un lac magique où l’eau ne reflète pas votre apparence, mais votre âme. En plongeant votre regard dans ses profondeurs, vous découvrez des facettes de vous-même que vous n’avez jamais soupçonnées.",
    picture: "https://res.cloudinary.com/durjoyq8p/image/upload/v1741115770/airbnb-dreams/apcitf1v88yms0u0rw25.webp",
    category: "Romance",
    price: 6,
    address: "Laguna Colorada, Bolivia",
    user_id: @user1.id
  }
]

dreams.each do |dream_data|
  dream = Dream.create!(
    title: dream_data[:title],
    description: dream_data[:description],
    category: dream_data[:category],
    price: dream_data[:price],
    address: dream_data[:address],
    user_id: dream_data[:user_id]
  )

  file = URI.open(dream_data[:picture])
  dream.picture.attach(io: file, filename: "dream_#{dream.id}.webp", content_type: "image/webp")

  puts "Dream#{dream[:id]} - '#{dream[:title]}' has been added! ✅"
end

puts "All dreams are now in the database! ✅"

puts "Adding reviews..."

reviews = [
  {
    content: 'Ce rêve était trop bien !',
    user_id: "#{@user3[:id]}".to_i,
    dream_id: "#{Dream.first[:id].to_i}",
  },
  {
    content: 'Ce rêve était bof...',
    user_id: "#{@user1[:id]}".to_i,
    dream_id: "#{Dream.first[:id].to_i}",
  },
]

reviews.each do |review_data|
  review = Review.create!(
    content: review_data[:content],
    user_id: review_data[:user_id],
    dream_id: review_data[:dream_id]
  )
  puts "✅ '#{review[:user_id]}' has been added!"
end

puts "All reviews are now in the database! ✅"

puts "Everything is ok!✅"
