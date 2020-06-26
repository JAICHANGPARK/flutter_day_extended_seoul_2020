import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class Slide0100 extends StatefulWidget {
  @override
  _Slide0100State createState() => _Slide0100State();
}

class _Slide0100State extends State<Slide0100> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Image.network("https://user-images.githubusercontent.com/33178745/80969856-f180be00-8e22-11ea-9b42-a73b91e1273b.png"),
//      child: CachedNetworkImage(
//        imageUrl: "https://media.giphy.com/media/KmTnUKop0AfFm/giphy.gif",
//        placeholder: (context, url) => CircularProgressIndicator(),
//        errorWidget: (context, url, error) => Icon(Icons.error),
//      ),
        ),
        Expanded(
          child: Image.network("https://developer.android.com/topic/performance/images/crash-example-framed.png"),
        ),
        Expanded(
          child: Column(
            children: [
              Expanded(child: Image.network("https://media.giphy.com/media/KmTnUKop0AfFm/giphy.gif")),
              Expanded(child: Image.network("https://media.giphy.com/media/nrXif9YExO9EI/giphy.gif")),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network("https://media.giphy.com/media/WqDRe5JBggRva/giphy.gif"),
          ),
        )
      ],
    );
//    return Image.network("",);
  }
}
