import 'package:flutter/material.dart';

import '../../repositories/exp.dart';
import 'sliver_article.dart';

class ColumnDetailPage extends StatelessWidget {
  final Columnize columnize;

  const ColumnDetailPage({Key? key, required this.columnize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(columnize.title),
      ),
      body: CustomScrollView(
        slivers: [
          SliverArticlePanel()
          // SliverAppBar(
          //   title: Text(columnize.title),
          // ),
        ],
      ),
    );
  }
}
