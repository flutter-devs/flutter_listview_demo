import 'package:flutter/material.dart';
import 'package:flutter_listview_app/screen/GetRatings.dart';
import 'package:flutter_listview_app/screen/ListViewItemDetails.dart';
import 'package:flutter_listview_app/model/Item.dart';

class ItemList extends StatelessWidget {
  final Item item;

  const ItemList({@required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ListItemDetails(this.item),
          ),
        );
      },
      child: Card(
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Row(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                item.imageUrl,
                height: 120.0,
                width: 120.0,
                fit: BoxFit.fitHeight,
              ),
              Flexible(
                //padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        item.name,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Color(0xFFD73C29),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        item.category,
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 9.0,
                        ),
                      ),
                      SizedBox(height: 0.0),
                      GetRatings(),
                      SizedBox(height: 2.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 4.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'RELEASE DATE:',
                                  style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 9.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  item.releaseDate,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 9.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 4.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'RUNTIME:',
                                  style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 9.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  item.runtime,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 9.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderContent extends StatelessWidget {
  final Item item;

  HeaderContent(this.item);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 10.0, top: 5.0, right: 10.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Color(0xFFD73C29),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    item.category,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 9.0,
                    ),
                  ),
                  GetRatings(),
                  MovieDesc(this.item),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MovieDesc extends StatelessWidget {
  final Item item;

  MovieDesc(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Text(
                  'RELEASE DATE:',
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 9.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  item.releaseDate,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 9.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(
              children: <Widget>[
                Text(
                  'RUNTIME:',
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 9.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  item.runtime,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 9.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
