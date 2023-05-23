import 'package:flutter/material.dart';

class SongItem extends StatefulWidget {
  String name1;
  String url;
  SongItem({super.key, required this.name1, required this.url});

  @override
  State<SongItem> createState() => _SongItemState();
}

class _SongItemState extends State<SongItem> {
  // String name = widget.n
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 1000,
        child: ListTile(
          // minVerticalPadding: 12,
          title: RichText(
            maxLines: 12000,
            text: TextSpan(
                text: widget.name1, style: TextStyle(color: Colors.white)),
            softWrap: false,
          ),
          leading: Image.network(widget.url),
        ));
  }
}
