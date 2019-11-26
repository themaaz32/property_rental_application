import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailOfHouse extends StatelessWidget {
  var index; //imag index

  DetailOfHouse(this.index);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 330,
            child: Stack(
              children: <Widget>[
                SizedBox(
                  height: 330,
                  child: Image.asset("assets/${index+1}.jpg", fit: BoxFit.cover,),
                ),

                Positioned(
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(25)), color: Colors.green),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
                      onPressed: (){
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  top: 32,
                  left: 32,
                )
              ],
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              controller: ScrollController(),
              child: Column(
                //column for whole container
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 32, right: 32, top: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: <Widget>[
                            Container(
                              width: media.size.width-64-48,
                              child: Text("Abc Tower, 3 Bed Rooms, Luxury Apartement",
                                style: TextStyle(fontSize: 22, color: Colors.grey[800], fontWeight: FontWeight.bold),
                              ),
                            ),

                            SizedBox(height: 8,),
                            Text("Karachi, Bahria Town, A123-4",
                              style: TextStyle(color: Colors.grey[500],), overflow: TextOverflow.ellipsis),
                            SizedBox(height: 16,),

                            Text("3000Rs /day",
                                style: TextStyle(fontSize: 22,color: Colors.green, fontWeight: FontWeight.bold), ),

                          ],
                        ),

                        IconButton(
                          icon: Icon(Icons.navigation),
                        )
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 32, right: 32, top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(Icons.people, size: 12, color: Colors.grey[600],),
                            SizedBox(width: 4,),
                            Text("5 people", style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w500),)
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.local_offer, size: 12, color: Colors.grey[600],),
                            SizedBox(width: 4,),
                            Text("2 Beds", style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w500),)
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.airline_seat_legroom_reduced, size: 12, color: Colors.grey[600],),
                            SizedBox(width: 4,),
                            Text("2 Bathrooms", style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w500),)
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 8,
                  ),

                  Divider(),

                  Container(
                    margin: EdgeInsets.only(left: 32, right: 32),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          child: ClipRRect(
                            child: Image.asset("assets/user.jpg", fit: BoxFit.contain,),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),

                        SizedBox(width: 16,),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Maaz Aftab", style: TextStyle(color: Colors.grey[800], fontSize : 18, fontWeight: FontWeight.w600),),
                              Text("Owner", style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w400),)
                            ],
                          ),
                        ),

                        FlatButton(
                          child : Text("Chat", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),),
                          onPressed: (){},
                          color: Colors.green,
                        )
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 8,
                  ),

                  Divider(),

                  Container(
                    margin: EdgeInsets.only(left: 32, right: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Features", style: TextStyle(color: Colors.grey[800], fontSize: 18, fontWeight: FontWeight.w600), ),
                        SizedBox(height: 16,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(Icons.wifi, color:  Colors.green,),
                                SizedBox(width: 4,),
                                Text("Wifi", style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w500),)
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.local_offer, color:  Colors.green,),
                                SizedBox(width: 4,),
                                Text("Bed", style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w500),)
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.videogame_asset, color:  Colors.green,),
                                SizedBox(width: 4,),
                                Text("T. Tennis", style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w500),)
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 8,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(Icons.wifi, color:  Colors.green,),
                                SizedBox(width: 4,),
                                Text("Wifi", style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w500),)
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.local_offer, color:  Colors.green,),
                                SizedBox(width: 4,),
                                Text("Bed", style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w500),)
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.videogame_asset, color:  Colors.green,),
                                SizedBox(width: 4,),
                                Text("T. Tennis", style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w500),)
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 8,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(Icons.wifi, color:  Colors.green,),
                                SizedBox(width: 4,),
                                Text("Wifi", style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w500),)
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.local_offer, color:  Colors.green,),
                                SizedBox(width: 4,),
                                Text("Bed", style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w500),)
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.videogame_asset, color:  Colors.green,),
                                SizedBox(width: 4,),
                                Text("T. Tennis", style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w500),)
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )

                ],
              ),
            ),
          )


        ],
      ),
    );
  }
}
