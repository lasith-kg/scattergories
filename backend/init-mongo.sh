set -e

mongo -- "$MONGO_INITDB_DATABASE" <<EOF
var rootUser = "${MONGO_INITDB_ROOT_USERNAME}";
var rootPassword = "${MONGO_INITDB_ROOT_PASSWORD}";
db = db.getSiblingDB('admin');
db.auth(rootUser, rootPassword);

db.createUser({
    user: "${MONGO_INITDB_USERNAME}",
    pwd: "${MONGO_INITDB_PASSWORD}",
    roles: [
        {
            role: 'readWrite',
            db: "${MONGO_INITDB_DATABASE}",
        },
    ],
    }
);

db = db.getSiblingDB("${MONGO_INITDB_DATABASE}");
db.createCollection("categories", { capped: false });

db.categories.insert([
  { title: "A river" },
  { title: "An animal" },
  { title: "Things that are cold" },
  { title: "Insects" },
  { title: "TV Shows" },
  { title: "Things that grow" },
  { title: "Fruits" },
  { title: "Things that are black" },
  { title: "School subjects" },
  { title: "Movie titles" },
  { title: "Musical Instruments" },
  { title: "Authors" },
  { title: "Bodies of water" },
  { title: "A bird" },
  { title: "Countries" },
  { title: "Cartoon characters" },
  { title: "Holidays" },
  { title: "Things that are square"},
  { title: "In the NWT Northwest Territories Canada"},
  { title: "Clothing" },
  { title: "A relative" },
  { title: "Games" },
  { title: "Sports Stars" },
  { title: "School supplies" },
  { title: "Things that are hot" },
  { title: "Heroes" },
  { title: "A girl s name" },
  { title: "Fears" },
  { title: "TV Stars" },
  { title: "Colours" },
  { title: "A fish" },
  { title: "Provinces or States" },
  { title: "Tools" },
  { title: "Breakfast foods" },
  { title: "Gifts" },
  { title: "Flowers" },
  { title: "Ice cream flavours" },
  { title: "A drink" },
  { title: "Toys" },
  { title: "Cities" },
  { title: "Things in the kitchen" },
  { title: "Ocean things" },
  { title: "Nicknames" },
  { title: "Hobbies" },
  { title: "Parts of the body" },
  { title: "Sandwiches" },
  { title: "Items in a catalogue" },
  { title: "World leaders or Politicians" },
  { title: "Excuses for being late" },
  { title: "Things that jump bounce" },
  { title: "Television stars" },
  { title: "Things in a park" },
  { title: "Foreign cities" },
  { title: "Stones Gems" },
  { title: "Musical instruments" },
  { title: "Things in the sky" },
  { title: "Pizza toppings" },
  { title: "Colleges Universities" },
  { title: "Fish" },
  { title: "Things that have spots" },
  { title: "Historical Figures" },
  { title: "Something you’re afraid of" },
  { title: "Terms of endearment" },
  { title: "Items in this room" },
  { title: "Drugs that are abused" },
  { title: "Fictional characters" },
  { title: "Menu items" },
  { title: "Magazines" },
  { title: "Capitals" },
  { title: "Kinds of candy" },
  { title: "Items you save up to buy" },
  { title: "Foot ware" },
  { title: "Something you keep hidden" },
  { title: "Items in a suitcase" },
  { title: "Things with tails" },
  { title: "Sports equipment" },
  { title: "Crimes" },
  { title: "Things that are sticky" },
  { title: "Awards ceremonies" },
  { title: "Cars" },
  { title: "Spices Herbs" },
  { title: "Bad habits" },
  { title: "Cosmetics Toiletries" },
  { title: "Celebrities" },
  { title: "Cooking utensils" },
  { title: "Reptiles Amphibians" },
  { title: "Parks" },
  { title: "Leisure activities" },
  { title: "Things you re allergic to" },
  { title: "Restaurants" },
  { title: "Notorious people" },
  { title: "Things in a medicine cabinet" },
  { title: "Household chores" },
  { title: "Halloween costumes" },
  { title: "Weapons" },
  { title: "Things that are round" },
  { title: "Words associated with exercise" },
  { title: "Sports" },
  { title: "Song titles" },
  { title: "Ethnic foods" },
  { title: "Things you shout" },
  { title: "Birds" },
  { title: "Ways to get from here to there" },
  { title: "Items in a kitchen" },
  { title: "Villains" },
  { title: "Things you replace" },
  { title: "ELEVEN" },
  { title: "Baby foods" },
  { title: "Famous duos and trios" },
  { title: "Things found in a desk" },
  { title: "Vacation spots" },
  { title: "Diseases" },
  { title: "Words associated with money" },
  { title: "Items in a vending machine" },
  { title: "Movie Titles" },
  { title: "Things you wear" },
  { title: "Beers" },
  { title: "Things at a circus" },
  { title: "Vegetables" },
  { title: "States" },
  { title: "Things you throw away" },
  { title: "Occupations" },
  { title: "Appliances" },
  { title: "Types of drinks" },
  { title: "Musical groups" },
  { title: "Store names" },
  { title: "Things at a football game" },
  { title: "Trees" },
  { title: "Personality traits" },
  { title: "Video games" },
  { title: "Electronic gadgets" },
  { title: "Board games" },
  { title: "Things that use a remote" },
  { title: "Card games" },
  { title: "Internet lingo" },
  { title: "Offensive words" },
  { title: "Wireless things" },
  { title: "Computer parts" },
  { title: "Software" },
  { title: "Websites" },
  { title: "Game terms" },
  { title: "Things in a grocery store" },
  { title: "Reasons to quit your job" },
  { title: "Things that have stripes" },
  { title: "Tourist attractions" },
  { title: "Diet foods" },
  { title: "Things found in a hospital" },
  { title: "Food Drink that is green" },
  { title: "Weekend Activities" },
  { title: "Acronyms" },
  { title: "Seafood" },
  { title: "Christmas songs" },
  { title: "Words ending in n" },
  { title: "Words with double letters" },
  { title: "Children’s books" },
  { title: "Things found at a bar" },
  { title: "Sports played outdoors" },
  { title: "Names used in songs" },
  { title: "Foods you eat raw" },
  { title: "Places in Europe" },
  { title: "Olympic events" },
  { title: "Things you see at the zoo" },
  { title: "Math terms" },
  { title: "Animals in books or movies" },
  { title: "Things to do at a party" },
  { title: "Kinds of soup" },
  { title: "Things found in New York" },
  { title: "Things you get tickets for" },
  { title: "Things you do at work" },
  { title: "Foreign words used in English" },
  { title: "Things you shouldn’t touch" },
  { title: "Spicy foods" },
  { title: "Things at a carnival" },
  { title: "Things you make" },
  { title: "Places to hangout" },
  { title: "Animal noises" },
  { title: "Computer programs" },
  { title: "Honeymoon spots" },
  { title: "Things you buy for kids" },
  { title: "Things that can kill you" },
  { title: "Reasons to take out a loan" },
  { title: "Words associated with winter" },
  { title: "Things to do on a date" },
  { title: "Historic events" },
  { title: "Things you store items in" },
  { title: "Things you do everyday" },
  { title: "Things you get in the mail" },
  { title: "Things you save up to buy" },
  { title: "Things you sit on" },
  { title: "Reasons to make a phone call" },
  { title: "Types of weather" },
  { title: "Titles people can have" },
  { title: "Things that have buttons" },
  { title: "Items you take on a road trip" },
  { title: "Things that have wheels" },
  { title: "Reasons to call 911" },
  { title: "Things that make you smile" },
  { title: "Ways to kill time" },
  { title: "Things that can get you fired" },
  { title: "Holiday Activities" },
]);
EOF