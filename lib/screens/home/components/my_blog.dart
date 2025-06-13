import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/home/components/post_card.dart';
import 'package:flutter_profile/screens/home/components/project_card.dart';
import 'package:http/http.dart' as http;
import 'package:xml/xml.dart';
import '../../../constants.dart';
import '../../../models/velog_post.dart';
import '../../../responsive.dart';

class MyPost extends StatefulWidget {
  @override
  State<MyPost> createState() => _MyPostState();
}

class _MyPostState extends State<MyPost> {
  List<VelogRssItem> posts = [];

  Future<String> fetchVelogRss(/*String username*/) async {
    final url = Uri.parse('https://proxy.cors.sh/https://api.velog.io/rss/@dnr111222');
    final client = http.Client();

    final response = await client.get(url, headers: {
      // "Access-Control-Allow-Origin": "*",
      // "withCredentials : true"
      // "Access-Control-Allow-Methods" : "GET, DELETE, HEAD, OPTIONS",
      //"x-cors-api-key": "temp_27b8a7c2d8ed81b4122a7c5456ecd806",
      //'Content-Type': 'application/json',
      //'Accept': '*/*'
    });
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to fetch Velog RSS');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    fetchVelogRss().then((value) {
      setState(() {
        posts = parseVelogRss(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          "My Post",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: defaultPadding),
        Responsive(
          mobile: PostGridView(
            crossAxisCount: 1,
            childAspectRatio: 1.7,
            post: posts,
          ),
          mobileLarge: PostGridView(
            crossAxisCount: 2,
            post: posts,
          ),
          tablet: PostGridView(
            childAspectRatio: 1.1,
            post: posts,
          ),
          desktop: PostGridView(
            post: posts,
          ),
        )
      ],
    );
  }
}

class PostGridView extends StatelessWidget {
  PostGridView({Key? key, this.crossAxisCount = 3, this.childAspectRatio = 1.3, required this.post})
      : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;
  final List<VelogRssItem> post;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: post.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => PostCard(
        post: post[index],
      ),
    );
  }
}
