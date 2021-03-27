import './models/anime.dart';

const ANIME_GENERS = [
  'Action',
  'Adventures',
  'Comedy',
  'Drama',
  'Magic',
  'Martial Arts',
  'Music',
  'School',
  'Sci-Fi',
  'Sports',
  'Superpower',
  'Thriller',
  'Mystery',
  'Police',
];

const DUMMY_ANIMES = const [
  Anime(
    id: 'a1',
    title: 'Fullmetal Alchemist: Brotherhood',
    image:
        "https://www.anime-planet.com/images/anime/covers/fullmetal-alchemist-brotherhood-2360.jpg?t=1475346984",
    description:
        'In order for something to be obtained, something of equal value must be lost.Alchemy is bound by this Law of Equivalent Exchange—something the young brothers Edward and Alphonse Elric only realize after attempting human transmutation: the one forbidden act of alchemy. They pay a terrible price for their transgression—Edward loses his left leg, Alphonse his physical body. It is only by the desperate sacrifice of Edward\'s right arm that he is able to affix Alphonse\'s soul to a suit of armor. Devastated and alone, it is the hope that they would both eventually return to their original bodies that gives Edward the inspiration to obtain metal limbs called "automail" and become a state alchemist, the Fullmetal Alchemist',
    type: Type.TV,
    episodes: 64,
    status: Status.Complete,
    studio: 'Bones',
    aired: 'Apr 5, 2009 to Jul 4, 2010',
    genres: {
      'Adventure',
      'Magic',
    },
  ),
  Anime(
    id: 'a2',
    title: 'My Hero Academia',
    image:
        "https://www.anime-planet.com/images/anime/covers/my-hero-academia-7585.jpg?t=1490303988",
    description:
        'The appearance of "quirks," newly discovered super powers, has been steadily increasing over the years, with 80 percent of humanity possessing various abilities from manipulation of elements to shapeshifting. This leaves the remainder of the world completely powerless, and Izuku Midoriya is one such individual.Since he was a child, the ambitious middle schooler has wanted nothing more than to be a hero. Izuku\'s unfair fate leaves him admiring heroes and taking notes on them whenever he can.But it seems that his persistence has borne some fruit: Izuku meets the number one hero and his personal idol, All Might. All Might\'s quirk is a unique ability that can be inherited, and he has chosen Izuku to be his successor!Enduring many months of grueling training, Izuku enrolls in UA High, a prestigious high school famous for its excellent hero training program, and this year\'s freshmen look especially promising. With his bizarre but talented classmates and the looming threat of a villainous organization, Izuku will soon learn what it really means to be a hero.',
    type: Type.TV,
    episodes: 13,
    status: Status.Complete,
    aired: 'Apr 3, 2016 to Jun 26, 2016',
    studio: 'Bones',
    genres: {
      'Action',
      'School',
      'Super Power',
    },
  ),
  Anime(
    id: 'a3',
    title: 'Steins;Gate',
    image:
        "https://www.anime-planet.com/images/anime/covers/steins-gate-3701.jpg?t=1517577204",
    description:
        'The self-proclaimed mad scientist Rintarou Okabe rents out a room in a rickety old building in Akihabara, where he indulges himself in his hobby of inventing prospective "future gadgets" with fellow lab members: Mayuri Shiina, his air-headed childhood friend, and Hashida Itaru, a perverted hacker nicknamed "Daru." The three pass the time by tinkering with their most promising contraption yet, a machine dubbed the "Phone Microwave," which performs the strange function of morphing bananas into piles of green gel.Though miraculous in itself, the phenomenon doesn\'t provide anything concrete in Okabe\'s search for a scientific breakthrough; that is, until the lab members are spurred into action by a string of mysterious happenings before stumbling upon an unexpected success—the Phone Microwave can send emails to the past, altering',
    type: Type.TV,
    episodes: 24,
    status: Status.Complete,
    aired: 'Apr 6, 2011 to Sep 14, 2011',
    studio: 'White Fox',
    genres: {
      'Thriller',
      'Sci-Fi',
    },
  ),
  Anime(
    id: 'a4',
    title: 'Detective Conan Movie 24: Hiiro no Dangan',
    image:
        "https://www.anime-planet.com/images/anime/covers/detective-conan-movie-24-hiiro-no-dangan-13937.jpg?t=1587062562",
    description:
        'Japan is celebrating the upcoming World Sports Games, the world\'s largest sporting event, in Tokyo. The "Japanese Bullet," the world\'s first vacuum-tube super-conducting linear train, is built with the latest Japanese technology and timed to coincide with the WSG opening ceremonies. The train is set to run from Shin Nagoya Station to Tokyo Station at up to 1,000 kilometers per hour. However, a bizarre incident occurs during a party held by famous major sponsors, leading to a string of kidnappings of top executives. Conan deduces a possible link to serial abductions in the WSG 15 years earlier in Boston',
    type: Type.Movie,
    episodes: 1,
    status: Status.NotYet,
    studio: 'TMS Entertainment',
    aired: 'Apr 16, 2021',
    genres: {
      'Action',
      'Mystery',
      'Comedy',
      'Police',
    },
  ),
  Anime(
    id: 'a5',
    title: 'Douluo Dalu: Xiaowu Juebie',
    image: "https://cdn.myanimelist.net/images/anime/1188/108563.jpg",
    description:
        'Tang Sect, the most famous martial arts sect of all. By stealing its most secret teachings to fulfill his dreams, Tang San committed an unforgivable crime. With his ambition attained, he hands his legacy to the sect and throws himself from the fearsome "Hell\'s Peak." But he could have never imagined that this would reincarnate him in another world, one without magic, martial arts, and grudges. A land where only the mystical souls of battle lay. The continent of Douluo. How will Tang San survive in this unknown environment? With a new road to follow, a new legend begins...',
    type: Type.ONA,
    episodes: 20,
    status: Status.Airing,
    studio: 'Sparkly Key Animation Studio',
    aired: 'May 23, 2020 to ?',
    genres: {
      'Action',
      'Adventure',
      'Martial Arts',
    },
  ),
  Anime(
    id: 'a6',
    title: 'Bleach: Memories in the Rain',
    image: "https://cdn.myanimelist.net/images/anime/5/21947.jpg",
    description:
        'Kurosaki Ichigo, the temporary Shinigami(Death God) for Kuchiki Rukia, discovers his mother\'s killer as one of the Hollows he has been hunting. He does battle with it in a prideful battle of revenge. This Special is actually a flashback of previous episodes in Bleach. After the ending credits, a short plays showing Shinigami and their Zanpakutos to "Number One" from the Bleach Soundtrack.',
    type: Type.Special,
    episodes: 1,
    status: Status.Complete,
    studio: 'Studio Pierrot',
    aired: 'Dec 18, 2004',
    genres: {
      'Action',
      'Adventure',
      'Drama',
    },
  ),
  Anime(
    id: 'a7',
    title: 'Haikyuu!! Tokushuu! Harukou Volley ni Kaketa Seishun',
    image:
        "https://www.anime-planet.com/images/anime/covers/haikyuu-tokushuu-harukou-volley-ni-kaketa-seishun-8679.jpg?t=1501203827",
    description:
        'The OVA will look back at the spring tournament primaries, and feature "interviews" with the players.',
    type: Type.OVA,
    episodes: 1,
    status: Status.Complete,
    studio: 'Production I.G',
    aired: 'Aug 4, 2017',
    genres: {
      'School',
      'Sports',
    },
  ),
];
