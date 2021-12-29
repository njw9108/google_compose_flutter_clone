import 'package:flutter/material.dart';
import 'package:jet_news_clone/presentation/interests/components/people_screen_widget.dart';
import 'package:jet_news_clone/presentation/interests/components/publications_screen_widget.dart';
import 'package:jet_news_clone/presentation/interests/components/topic_screen_widget.dart';
import 'package:jet_news_clone/presentation/posts/posts_view_model.dart';
import 'package:jet_news_clone/ui/ui.dart';
import 'package:provider/provider.dart';

class InterestScreen extends StatelessWidget {
  const InterestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<PostViewModel>();
    final state = viewModel.state;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: SafeArea(
            child: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ListTile(
                leading: Icon(Icons.beach_access_rounded),
                title: Text(
                  'Jet News',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: state.selectedDrawer == DrawerType.home
                      ? Colors.pinkAccent
                      : Colors.transparent,
                  onTap: () {
                    viewModel.onDrawerSelectChange(DrawerType.home);
                    Navigator.of(context).pop();
                    Navigator.of(context).pop();
                  },
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(Icons.home),
                  title: const Text(
                    'Home',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: state.selectedDrawer == DrawerType.interest
                      ? Colors.pinkAccent
                      : Colors.transparent,
                  onTap: () {
                    viewModel.onDrawerSelectChange(DrawerType.interest);
                    Navigator.of(context).pop();
                  },
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(Icons.message_outlined),
                  title: const Text(
                    'Interest',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        )),
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          ],
          title: const Center(
            child: Text(
              'Interest',
              style: TextStyle(fontSize: 25),
            ),
          ),
          bottom: const TabBar(
            labelColor: Colors.black,
            indicatorColor: Colors.pinkAccent,
            tabs: [
              Tab(
                text: 'Topic',
              ),
              Tab(
                text: 'People',
              ),
              Tab(
                text: 'Publications',
              ),
            ],
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: TabBarView(
            children: [
              TopicScreenWidget(),
              PeopleScreenWidget(),
              PublicationsScreenWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
