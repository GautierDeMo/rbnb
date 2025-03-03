puts "Deleting all..."
Dream.destroy_all
User.destroy_all

puts "Adding user#1..."

@user = User.create!(
  email: "test@example.com",
  password: "password123",
  password_confirmation: "password123",
  username: "testuser"
)

puts "User#1 are now in the database!✅"

puts "Adding new dreams..."

dreams = [
  {
    title: "Le Train des Mondes Oubliés",
    description: "Vous montez à bord d’un train sans destination connue. À chaque arrêt, une porte s’ouvre sur un monde différent : une ville suspendue dans le ciel, une jungle aux arbres phosphorescents, un désert où les étoiles tombent comme de la neige... Chaque fois que vous descendez, vous oubliez d’où vous venez, mais une sensation de déjà-vu vous envahit.",
    picture: "",
    category: "Aventure",
    price: 5,
    user_id: @user.id
  },
  {
    title: "La Ville qui Chante",
    description: "Vous déambulez dans une ville où chaque rue produit une mélodie, et où les immeubles murmurent leurs souvenirs. Les pavés résonnent sous vos pas comme un piano géant. Lorsque vous parlez, votre voix devient une note de musique. Serez-vous le chef d’orchestre ou un simple spectateur de cette symphonie nocturne ?",
    picture: "",
    category: "Fantastique",
    price: 2,
    user_id: @user.id
  },
  {
    title: "L’Île aux Souvenirs Perdus",
    description: "Vous vous réveillez sur une île où le sable est fait de montres cassées et où les vagues chuchotent des histoires oubliées. Chaque objet trouvé sur la plage est un fragment de mémoire, mais... sont-ce les vôtres ou celles d’un autre rêveur ?",
    picture: "",
    category: "Nostalgie",
    price: 6,
    user_id: @user.id
  },
  {
    title: "Le Grand Bal des Ombres",
    description: "Un immense bal masqué où les danseurs sont des ombres en mouvement. Personne ne parle, mais vous comprenez leurs pensées à travers la danse. Soudain, l’orchestre s’arrête, et tous les regards se tournent vers vous… Vous êtes le personnage principal de cette énigme onirique.",
    picture: "",
    category: "Surréaliste",
    price: 4,
    user_id: @user.id
  },
  {
    title: "La Chute Infinie",
    description: "Vous tombez, mais tout est paisible. Autour de vous, des fragments de souvenirs flottent, suspendus dans l’air. Vous voyez des portes ouvertes au milieu du ciel : certaines mènent à des forêts, d’autres à des bibliothèques flottantes ou à des ruines extraterrestres. À vous de choisir où atterrir… ou de continuer à chuter.",
    picture: "",
    category: "Surréaliste",
    price: 5,
    user_id: @user.id
  },
  {
    title: "Le Marché des Émotions",
    description: "Un marché étrange où les émotions se vendent sous forme de fioles lumineuses. Vous pouvez y acheter de la joie pure, échanger un souvenir contre un soupçon de nostalgie, ou goûter à un frisson d’aventure.",
    picture: "",
    category: "Fantastique",
    price: 7,
    user_id: @user.id
  },
  {
    title: "Les Rues du Temps",
    description: "Vous déambulez dans une ville où chaque rue vous ramène à une époque différente de votre vie. Lorsque vous franchissez une ruelle, vous êtes soudain enfant ; un autre passage vous transporte dans votre futur.",
    picture: "",
    category: "Exploration",
    price: 6,
    user_id: @user.id
  },
  {
    title: "L’Océan des Étoiles",
    description: "Un océan où chaque vague est une galaxie et où les profondeurs cachent des civilisations oubliées. Vous flottez dans cette mer cosmique, écoutant les échos d’histoires venues d’un autre temps.",
    picture: "",
    category: "Science-fiction",
    price: 8,
    user_id: @user.id
  },
  {
    title: "Le Cirque des Merveilles",
    description: "Un cirque où les lois de la physique n’existent pas. Les acrobates flottent dans l’air, les magiciens jouent avec le temps et chaque numéro dévoile une part de votre inconscient.",
    picture: "",
    category: "Expérience immersive",
    price: 7,
    user_id: @user.id
  },
  {
    title: "La Forêt des Murmures",
    description: "Une forêt enchantée où chaque arbre chuchote une histoire. Si vous posez votre oreille contre l’écorce, vous pouvez entendre des récits d’anciens rêveurs, ou peut-être même vos propres souvenirs oubliés.",
    picture: "",
    category: "Relaxant",
    price: 5,
    user_id: @user.id
  },
  {
    title: "Le Lac des Réflexions",
    description: "Un lac magique où l’eau ne reflète pas votre apparence, mais votre âme. En plongeant votre regard dans ses profondeurs, vous découvrez des facettes de vous-même que vous n’avez jamais soupçonnées.",
    picture: "",
    category: "Romance",
    price: 6,
    user_id: @user.id
  }
]

dreams.each do |dream|
  Dream.create!(dream)
  puts "'#{dream[:title]}' has been added!"
end

puts "All dreams are now in the database!✅"
