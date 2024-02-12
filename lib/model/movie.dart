class Movie{
  String? name;
  String? review;
  String? details;
  String? imagePath;

  Movie({this.details, this.name, this.imagePath, this.review});

}



List<Movie> listMoviesChild=[
  Movie(
    details: 'Toy Story',
    imagePath: 'https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9780794450151/disney-pixar-toy-story-9780794450151_hr.jpg',
    name: 'Toy Story 1',
    review: 'Buena',
    ),
  Movie(
    details: 'Moana',
    imagePath: 'https://i0.wp.com/www.mamaholistica.com/wp-content/uploads/2017/03/Moana-Digital-Card_Front_Final.jpg?ssl=1',
    name: 'Moana',
    review: 'Buena',
  ),
  Movie(
    details: 'Lilo & Stitch',
    imagePath: 'https://www.visitelche.com/wp-content/uploads/2022/07/Cine-Infantil-Lilo-Stitch-Cinema-dEstiu-Escorxador-Elx-Elche.jpg',
    name: 'Lilo & Stitch',
    review: 'Buena',
  ),
  Movie(
    details: 'Cars',
    imagePath: 'https://pics.filmaffinity.com/Cars-746710621-large.jpg',
    name: 'Cars',
    review: 'Buena',
  ),
];

List<Movie> listMoviesSeries=[
  Movie(
    details: 'Dr. House',
    imagePath: 'https://m.media-amazon.com/images/I/71GQz1F3yxL._SL1500_.jpg',
    name: 'Dr. House',
    review: 'Buena',
    ),
  Movie(
    details: 'Gambito de Dama',
    imagePath: 'https://i.pinimg.com/736x/26/7d/0a/267d0a7f274cb778ceee017a1bc0acb4.jpg',
    name: 'Gambito de Dama',
    review: 'Buena',
  ),
  Movie(
    details: 'Breaking Bad',
    imagePath: 'https://www.tuposter.com/pub/media/catalog/product/cache/image/700x560/91bbed04eb86c2a8aaef7fbfb2041b2a/b/r/breaking_bad_walter_white_poster_1.png',
    name: 'Breaking Bad',
    review: 'Buena',
  ),
  Movie(
    details: 'Cars',
    imagePath: 'https://www.elindependiente.com/wp-content/uploads/2017/12/Poster_Blackmirror.jpg',
    name: 'Black Mirror',
    review: 'Buena',
  ),
];