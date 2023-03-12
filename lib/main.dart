import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Weather", style: TextStyle(color: Colors.black87)),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
          iconTheme: const IconThemeData(color: Colors.black54),
          actions: [
            IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
          ],
        ),
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: [
        _headerImage(),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                _weatherDesc(),
                const Divider(),
                _temp(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Image _headerImage() {
  return const Image(
    image: NetworkImage(
        'https://www.2ec.com.au/wp-content/uploads/sites/4/2022/08/MicrosoftTeams-image-21.jpg'),
    fit: BoxFit.cover,
  );
}

Column _weatherDesc() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: const [
      Text(
        'Tuesday - May 22',
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
      ),
      Divider(),
      Text(
        'Lorem ipsum dolor sit amet consectetur adipiscing elit at diam porta etiam cras, aliquet per viverra imperdiet accumsan consequat magnis enim class rutrum. Blandit litora porta vitae sapien ultricies, habitant ornare nisl enim nulla vel, aliquam neque cum lectus.',
        style: TextStyle(color: Colors.black54),
      )
    ],
  );
}

Row _temp() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Icon(
            Icons.wb_sunny,
            color: Colors.yellow,
          ),
        ],
  ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Text(
                  '15°C Clear',
                  style: TextStyle(color: Colors.deepPurple),
                )
              ],
            ),
            Row(
              children: const [
                Text(
                  'Ashgabat, Turkmenistan',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            )
          ],
        ),
    ],
  );
}
