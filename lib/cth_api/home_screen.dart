import 'package:flutter/material.dart';
import 'package:mtf_tutor/cth_api/api_service.dart';
import 'package:mtf_tutor/cth_api/post_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  final ApiService apiService = ApiService();
  List<Post> posts = [];
  Post newPost = Post(id: 0, userId: 0, title: '', body: '');

  @override
  void initState() {
    super.initState();
    _fetchPosts();
  }

  Future<void> _fetchPosts() async {
    final fetchedPosts = await apiService.getPosts();
    setState(() {
      posts = fetchedPosts;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Example'),
      ),
      body: RefreshIndicator(
        onRefresh: _fetchPosts,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(posts[index].title),
                      subtitle: Text(posts[index].body),
                    );
                  },
                ),
              ),
              if (newPost.id != 0)
                ListTile(
                  title: Text(newPost.title),
                  subtitle: Text(newPost.body),
                ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final createdPost = await apiService.createPost(Post(
            id: 101,
            userId: 1,
            title: 'foo',
            body: 'bars',
          ));
          setState(() {
            newPost = createdPost;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

