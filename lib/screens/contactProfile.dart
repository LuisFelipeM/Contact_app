import 'package:flutter/material.dart';

class contactProfileScreen extends StatelessWidget {
  const contactProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          profileAppBar(),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                // add Custom widgets here
                ProfileData(
                  icon: Icon(Icons.person),
                  name: 'Person Name',
                ),
                ProfileData(
                  icon: Icon(Icons.phone),
                  name: 'Phone',
                ),
                ProfileData(
                  icon: Icon(Icons.email),
                  name: 'Email',
                ),
                ProfileData(
                  icon: Icon(Icons.calendar_month_sharp),
                  name: 'Birthday',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileData extends StatelessWidget {
  const ProfileData({
    Key? key,
    required this.icon,
    required this.name,
  }) : super(key: key);

  final Icon icon;

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      height: 50,
      width: double.infinity,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [icon],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class profileAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      title: Text('Contact Profile'),
      pinned: false,
      expandedHeight: 300,
      collapsedHeight: 100,
      flexibleSpace: FlexibleSpaceBar(
        background: FadeInImage(
          placeholder: AssetImage('assets/Loader.gif'),
          image: NetworkImage(
              'https://shotkit.com/wp-content/uploads/2021/06/cool-profile-pic-matheus-ferrero.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
