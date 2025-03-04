puts "Deleting all dreams..."
Dream.destroy_all
User.destroy_all

puts "Adding new dreams..."

@user = User.create!(
  email: "test@example.com",
  password: "password123", # Remplace par un mot de passe sécurisé
  password_confirmation: "password123",
  username: "testuser"
)

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
    category: "Relaxant",
    price: 3,
    user_id: @user.id
  },
  {
    title: "Le Grand Bal des Ombres",
    description: "Un immense bal masqué où les danseurs sont des ombres en mouvement. Personne ne parle, mais vous comprenez leurs pensées à travers la danse. Soudain, l’orchestre s’arrête, et tous les regards se tournent vers vous… Vous êtes le personnage principal de cette énigme onirique.",
    picture: "",
    category: "Mystère",
    price: 1,
    user_id: @user.id
  },
  {
    title: "La Chute Infinie",
    description: "Vous tombez, mais tout est paisible. Autour de vous, des fragments de souvenirs flottent, suspendus dans l’air. Vous voyez des portes ouvertes au milieu du ciel : certaines mènent à des forêts, d’autres à des bibliothèques flottantes ou à des ruines extraterrestres. À vous de choisir où atterrir… ou de continuer à chuter.",
    picture: "",
    category: "Voyage intérieur",
    price: 3,
    user_id: @user.id
  }
]

dreams.each do |dream|
  Dream.create!(dream)
  puts "'#{dream[:title]}' has been added!"
end

puts "All dreams are now in the database!✅"
