import 'package:flutter/material.dart';
import 'package:spotify_clone/widgets/album_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .6,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white.withOpacity(0.5),
                Colors.white.withOpacity(0.1),
                Colors.black.withOpacity(0),
              ],
            ),
          ),
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recantly Played",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.history),
                          SizedBox(width: 20),
                          Icon(Icons.settings),
                        ],
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: const [
                      AlbumCard(
                        label: "The Best of 🐷🌈",
                        image: AssetImage('assets/neng.jpeg'),
                      ),
                      SizedBox(width: 16),
                      AlbumCard(
                        label: "1975",
                        image: NetworkImage(
                            'https://i.scdn.co/image/ab67616d00001e02251ec2bbbb4abcde62f412b3'),
                      ),
                      SizedBox(width: 16),
                      AlbumCard(
                        label: "Power Gaming",
                        image: AssetImage('assets/album4.jpg'),
                      ),
                      SizedBox(width: 16),
                      AlbumCard(
                        label: "Best Mode",
                        image: AssetImage('assets/album1.jpg'),
                      ),
                      SizedBox(width: 16),
                      AlbumCard(
                        label: "Matsuri",
                        image: AssetImage('assets/album9.jpg'),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good evening",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: const [
                          RowAlbumCard(
                            image: AssetImage("assets/album1.jpg"),
                            label: "Lofi Remix",
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          RowAlbumCard(
                            image: AssetImage("assets/album2.jpg"),
                            label: "50 Pop song",
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: const [
                          RowAlbumCard(
                            image: AssetImage("assets/album3.jpg"),
                            label: "Hip hop Hit",
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          RowAlbumCard(
                            image: AssetImage("assets/album4.jpg"),
                            label: "Adele",
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: const [
                          RowAlbumCard(
                            image: AssetImage("assets/album5.jpg"),
                            label: "Smooth jazz",
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          RowAlbumCard(
                            image: AssetImage("assets/top50.jpg"),
                            label: "Top 50 - Global",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text("Based on your receent listening",
                          style: Theme.of(context).textTheme.titleLarge),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: const [
                          AlbumCard(
                            label: "The Best of 2020",
                            image: AssetImage('assets/album3.jpg'),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Motivation Mix",
                            image: AssetImage('assets/album2.jpg'),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Power Gaming",
                            image: AssetImage('assets/album4.jpg'),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Best Mode",
                            image: AssetImage('assets/album1.jpg'),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Matsuri",
                            image: AssetImage('assets/album9.jpg'),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}

class RowAlbumCard extends StatelessWidget {
  final AssetImage image;
  final String label;
  const RowAlbumCard({
    super.key,
    required this.image,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(4),
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(children: [
          Image(
            image: image,
            height: 48,
            width: 48,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            label,
          ),
        ]),
      ),
    );
  }
}
