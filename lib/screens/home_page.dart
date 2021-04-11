import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned(
          bottom: height /70,
          child: Image.network(
            'https://images.squarespace-cdn.com/content/v1/56943972df40f384188df846/1598296611455-6UGGJ3K07JD6CRZA3DNS/ke17ZwdGBToddI8pDm48kNPKVmbt05aEWnErXou3fDl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0tb-hnCqoepq4X8c1traqO_6-8vaS3UGENu9QP5pfFlLbyLeIY6QzmBTG9h7XCKkkQ/lebron_james_by_maggie_west_1.jpg?format=2500w',
            height: height,
            width: width,
            fit: BoxFit.cover,
          ),
        ),
        Foreground()
      ],
    );
  }
}

class Foreground extends StatelessWidget {
  const Foreground({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    var inputBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black),
      borderRadius: BorderRadius.all(
        Radius.circular(30.0),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://scontent.fuln1-1.fna.fbcdn.net/v/t1.6435-9/116873907_1650015401824052_3431434889563061910_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=174925&_nc_ohc=JpPiF5s-2zkAX9hju8N&_nc_ht=scontent.fuln1-1.fna&oh=c69407a401f56ab1d8b9f02b28c5bd41&oe=6097DF34',
                ),
                backgroundColor: Colors.black12
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: DefaultTextStyle(
          style: GoogleFonts.raleway(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Text(
                'Hello Guys!',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 5),
              Text(
                'Check the players informations',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 35),
              TextField(
                decoration: InputDecoration(
                  border: inputBorder,
                  enabledBorder: inputBorder,
                  focusedBorder: inputBorder,
                  hintText: 'Search players',
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                  suffixIcon: Icon(Icons.search, color: Colors.white),
                ),
              ),
              SizedBox(height: 150),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  'Players',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ]),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (var location in locations)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          ColorFiltered(
                            colorFilter: ColorFilter.mode(
                              Colors.black12,
                              BlendMode.darken,
                            ),
                            child: Image.network(
                              location.imageUrl,
                              height: height * 0.35,
                            ),
                          ),
                        ],
                      ),
                    )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Location {
  final String imageUrl;

  Location({
    this.imageUrl,
  });
}

final locations = [
  Location(
    imageUrl: 'https://mcdn.wallpapersafari.com/medium/43/44/dPtber.jpg',
  ),
  Location(
    imageUrl: 'https://cdn.wallpapersafari.com/85/92/FIrOk1.png',
  ),
];