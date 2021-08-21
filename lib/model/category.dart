class Category {
  String categoryName;
  String categoryImage;

  Category({this.categoryName, this.categoryImage});

  static var category = [
    Category(categoryName: 'Camp', categoryImage: 'asset/images/camp.png'),
    Category(categoryName: 'Beach', categoryImage: 'asset/images/beach.png'),
    Category(categoryName: 'Lake', categoryImage: 'asset/images/lake.png'),
    Category(categoryName: 'Rafting', categoryImage: 'asset/images/rafting.png'),
    Category(categoryName: 'Scuba', categoryImage: 'asset/images/scuba.png'),
    Category(categoryName: 'Sky Diving', categoryImage: 'asset/images/skydiving.png'),
  ];
}

class Destinations {
  String destinationName;
  String destinationImage;
  String destinationLocation;
  String destinationStars;
  String destinationDescription;
  String destinationStayPrice;
  bool isFavourite;

  Destinations({
    this.destinationName,
    this.destinationImage,
    this.destinationLocation,
    this.destinationStars,
    this.destinationDescription,
    this.destinationStayPrice,
    this.isFavourite,
  });

  static var destinations = [
    Destinations(
      destinationName: 'The Fairy Pools on the Isle of Skye',
      destinationImage: 'asset/images/scotland.jpg',
      destinationLocation: 'Scotland',
      destinationStars: '5.0',
      destinationDescription:
          'Scotland is filled with a number of beautiful places in the world. Some of the best places in the world include the Fairy Pools on the Isle of Skye. This romantic and inspiring place has made many writers and poets spend their time and create their masterpieces. If you wish to indulge in wild swimming, jump into the icy cold waters of Fairy Pools of Scotland. Located at the foot of the Black Cuillins near Glenbrittle, Fairy Pools’ crystal blue waters are a mind-numbing delight for nature and adventure lovers. This part of Europe has a unique geography. The natural landscapes and scenic wonders get it counted among the best places in the world for the honeymooners, adventurers and photographers.',
      destinationStayPrice: 'Rs.5000',
      isFavourite: false,
    ),
    Destinations(
      destinationName: 'Rainbow mountains',
      destinationImage: 'asset/images/china.jpg',
      destinationLocation: 'China',
      destinationStars: '4.9',
      destinationDescription:
          'Rainbow Mountains are one of the many beautiful places in the world that China boasts about. These gorgeous mountains look like a painting. Artists can take a great inspiration from the Rainbow Mountains in China – earth’s natural paint palette. National Geographic counts Rainbow Mountains as one of top geographical wonders of the world. Many travel guidebooks have listed it as must visit amazing places in the world because of the sheer beauty.',
      destinationStayPrice: 'Rs.4900',
      isFavourite: false,
    ),
    Destinations(
      destinationName: 'Railay Beach',
      destinationImage: 'asset/images/thailand.jpg',
      destinationLocation: 'Thailand',
      destinationStars: '4.8',
      destinationDescription:
          'Located in a remote paradise, Railay beach is one of the many beautiful places that makes Thailand counted among the most popular tourist destinations in the world. Railay Beach is the pride of Thailand tourism.Railay Beach is considered one of the mesmerising and beautiful places in the world because of its natural placement. Isolated by the mainland by limestone cliffs and surrounded by dense jungle, Railay beach’s beauty is unmatchable to any other destination in Thailand. No wonder, Railay Beach is so stunning and laidback, making it counted among the beautiful locations in the world.',
      destinationStayPrice: 'Rs.4800',
      isFavourite: false,
    ),
    Destinations(
      destinationName: 'Northern Lights',
      destinationImage: 'asset/images/iceland.jpg',
      destinationLocation: 'Iceland',
      destinationStars: '4.7',
      destinationDescription:
          'Iceland, in general, comes in the list of top three most beautiful places in the world. Its natural setting, mountains, geysers are already amazing and scenic. There are so many beautiful places in Iceland but one reason for which everyone would count this country among best places to travel in the world will be its northern lights.',
      destinationStayPrice: 'Rs.4700',
      isFavourite: false,
    ),
    Destinations(
      destinationName: 'Marble Caverns of Carrera Lake',
      destinationImage: 'asset/images/chile.jpg',
      destinationLocation: 'Chile',
      destinationStars: '4.6',
      destinationDescription:
          'From Dramatic Atacama Desert in the North to mesmerising fiords in the South, Chile has everything that would make it counted among amazing places in the world. Chile is one of the most diverse countries in the terms of geography. Because of this, the country hides many beautiful locations in the world around its many corners.',
      destinationStayPrice: 'Rs.4600',
      isFavourite: false,
    ),
  ];
}
