import 'package:flutter/material.dart';
import '../../posting_page/models/posting_item_model.dart';

class PostingItemList extends StatelessWidget {
  final List<PostingItemModel> posts;

  PostingItemList({required this.posts});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: posts.map(
        (post) {
          return ListTile(
            // leading: Image.network(post.title?.value ?? ''),
            title: Text(post.title?.value ?? 'Unknown'),
          );
        },
      ).toList(),
    );
  }
}
