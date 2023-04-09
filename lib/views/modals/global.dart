class animal {
  static String imagepath = "assets/images/";
  static var map = {
    "image": "${animal.imagepath}parrot-removebg-preview.png",
    'image2': "${animal.imagepath}animal1-removebg-preview.png",
    'image3': "${animal.imagepath}dog-removebg-preview.png",
    'image4': "${animal.imagepath}fish-removebg-preview.png",
  };

  static List animalimage = [
    {
      'name': "Mammals",
      "image": "${imagepath}lion.jpg",
      'image1': "${imagepath}leaperd.jpg",
      'name1': "Lion",
      'name2': "Leopard",
      'detail': "Lions have strong, compact bodies and powerful forelegs, teeth and jaws for pulling down "
          "and killing prey. Their coats are yellow-gold, and adult males have shaggy manes that range"
          " in color from blond to reddish-brown to black. The length and color of a lion's mane is likely "
          "determined by age, genetics and hormones.",
      'detail1': "Leopards are the smallest of the large cats, which includes lions, tigers, and jaguars."
          " Female leopards weigh 46 to 132 pounds and males weigh 80 to 165 pounds. They average "
          "28 inches at the shoulder with a general range of 17.5 to 30.5 inches high at the shoulder.",
    },
    {
      'name': "Birds",
      "image": "${imagepath}parrot.jpeg",
      'image1': imagepath + "crow.jpg",
      'name1': "Parrot",
      'name2': "Crow",
      'detail':
          "Characteristic features of parrots include a strong, curved bill, an upright stance, strong legs, and clawed zygodactyl feet. Many parrots are vividly coloured, and some are multi-coloured. Most parrots exhibit little or no sexual dimorphism in the visual spectrum.",
      'detail1':
          "Crows live in large, close-knit families, and, like social mammals, they not only hunt and forage together but also defend territories and care for the young together. Most species, however, do not nest in colonies. Each mating pair has its own nest of sticks and twigs, usually high up in a tree.",
    },
    {
      'name': "Reptiles",
      "image": imagepath + "crocodile.jpg",
      'image1': imagepath + "gavialis.jpg",
      'name1': "Crocodile",
      'name2': "Gavialis",
      'detail':
          "Crocodiles have powerful jaws with many conical teeth and short legs with clawed webbed toes. They share a unique body form that allows the eyes, ears, and nostrils to be above the water surface while most of the animal is hidden below. The tail is long and massive, and the skin is thick and plated.",
      'detail1':
          "It currently inhabits rivers in the plains of the northern part of the Indian subcontinent. It is the most thoroughly aquatic crocodilian, and leaves the water only for basking and building nests on moist sandbanks. Adults mate at the end of the cold season.",
    },
    {
      'name': "Amphibians",
      "image": imagepath + "Amphibians.jpg",
      'image1': imagepath + "tods.webp",
      'name1': "Frog",
      'name2': "Tods",
      'detail':
          "In general, frogs have protruding eyes, no tail, and strong, webbed hind feet that are adapted for leaping and swimming. They also "
              "possess smooth, moist skins. Many are predominantly aquatic, but some live on land, in burrows, or in trees.",
      'detail1':
          "Like frogs, toads are amphibians. They differ from most frogs because they have dry"
              " skin, warts, crests behind the eyes, and parotoid glands. The parotoid glands produce a poisonous secretion that helps the toad defend itself from predators.",
    },
    {
      'name': "Fish",
      "image": imagepath + "fish.jpg",
      'image1': imagepath + "vahel.jpg",
      'name1': "Fish",
      'name2': "Vahel",
      'detail': 'Fish are aquatic vertebrate animals that have gills but lack limbs with digits, '
          'like fingers or toes. Recall that vertebrates are animals with internal backbones. Most fish are streamlined in '
          'their general body form. The word fish is the same whether it is singular or plural—you can talk about one fish or ten fish.',
      'detail1':
          "Whales are mammals just like we are. Just like us, they breathe air, have hair, are warm-blooded, give birth to live young, and feed their young milk. Whales are unique, beautiful, graceful and mysterious; they nurture, form friendships, innovate, grieve, play, sing and cooperate with one another.",
    },
    {
      'name': "Insect",
      "image": imagepath + "insect.jpg",
      'image1': imagepath + "green fly.webp",
      'name1': "Ladybug",
      'name2': "Green Fly",
      'detail': "Most ladybugs have oval, dome-shaped bodies with six short legs."
          "Depending on the species, they can have spots, stripes, or no markings at all. Seven-spotted ladybugs are red or orange with three "
          "spots on each side and one in the middle. They have a black head with white patches on either side.",
      'detail1':
          "Open doors, cracked window frames, and holes in screens allow green bottle flies to enter homes. Once inside, they can contaminate food and lay eggs in wastes and wet garbage. They eat from dirty dishes and trashcans but will consume almost any edible items left out in the open.",
    },
  ];
}
