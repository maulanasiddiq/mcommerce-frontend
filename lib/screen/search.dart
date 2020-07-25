import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Search(),
    ));

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

Future<List<Post>> search(String search) async {
  await Future.delayed(Duration(seconds: 2));
  return List.generate(search.length, (int index) {
    return Post(
      "Title : $search $index",
      "Description :$search $index",
    );
  });
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SearchBar<Post>(
            onSearch: search,
            hintText: "Cari produk hasil bumi...",
            onItemFound: (Post post, int index) {
              return ListTile(
                title: Text(post.title),
                subtitle: Text(post.description),
              );
            },
          ),
        ),
      ),
    );
  }
}

class Post {
  final String title;
  final String description;

  Post(this.title, this.description);
}
