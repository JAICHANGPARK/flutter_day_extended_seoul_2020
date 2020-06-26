import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class Slide0100 extends StatefulWidget {
  @override
  _Slide0100State createState() => _Slide0100State();
}

class _Slide0100State extends State<Slide0100> {
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: "https://media.giphy.com/media/KmTnUKop0AfFm/giphy.gif",
      placeholder: (context, url) => CircularProgressIndicator(),
      errorWidget: (context, url, error) => Icon(Icons.error),
    );
//    return Image.network("",);
  }
}
