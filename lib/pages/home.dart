import 'package:flutter/material.dart';
import 'package:movies2/model/movie.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text(widget.title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      body: Scaffold(
        backgroundColor: Colors.black,
        body: ListView(

          children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child: Stack(
                children: [
                  Container(
                    width: 350,
                    child:ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network('https://s1.abcstatics.com/abc/www/multimedia/play/2024/01/05/1475249035-RQ7DnPwBu89VCTvFFp0DOVN-1200x840@abc.JPG')),
                    )
                ],
              ),
            ),
          ),
          //Tittled Movies
          const Padding(
            padding: const EdgeInsets.only(top:10, left: 7),
            child: Text('Movies', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
          ),
          //ListView of MoviesList
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listMoviesChild.length,
              itemBuilder: (BuildContext context, index){
                return InkWell( 
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> MovieTile(movie: listMoviesChild[index],)));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left:7),
                    child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                              listMoviesChild[index].imagePath!,
                  
                              //fit: BoxFit.cover,
                            ),
                        ),
                  ),
                );
              }
              ),
          ),
          //Tittle Recommended Series
          const Padding(
            padding: const EdgeInsets.only(top:10, left: 7),
            child: Text('Recomended Series', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
          ),
          //ListView of SeriesList
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listMoviesSeries.length,
              itemBuilder: (BuildContext context, index){
                return InkWell( 
                  //borderRadius: BorderRadius.circular(10),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> MovieTile(movie: listMoviesSeries[index],)));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                              listMoviesSeries[index].imagePath!,
                  
                              //fit: BoxFit.cover,
                            ),
                        ),
                  ),
                );
              }
              ),
          )
          ],
        ),
      ),
    );
  }
}

class MovieTile extends StatelessWidget {
  final Movie movie;
  const MovieTile({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar( leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        ),
        body: Center(
          child: Text(
            'nombre: ${movie.name??''}'
            ),
          ),
    );
  }
}


