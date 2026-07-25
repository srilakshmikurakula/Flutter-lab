import 'package:flutter/material.dart';

void main() {
  runApp(const WidgetLayoutDemo());
}

class WidgetLayoutDemo extends StatelessWidget {
  const WidgetLayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Layout Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LayoutHomePage(),
    );
  }
}

class LayoutHomePage extends StatelessWidget {
  const LayoutHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Layouts'),
        centerTitle: true,
      ),

      // Drawer
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Widget Layout Demo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.text_fields),
              title: const Text('Text & Container'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.view_column),
              title: const Text('Row & Column'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.layers),
              title: const Text('Stack'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      // Main content
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          // -------------------------------
          // Part A: Basic Flutter Widgets
          // -------------------------------

          const Text(
            'Text & Container Demo',
            style: TextStyle(
              fontSize: 24,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 16),

          // Styled Text
          const Text(
            'This is a styled Text Widget',
            style: TextStyle(
              fontSize: 20,
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 16),

          // Container with padding, margin, border,
          // background color and decoration
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 4,
            ),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.lightBlueAccent,
                ],
              ),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.blueAccent,
                width: 3,
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 8,
                  offset: Offset(2, 4),
                ),
              ],
            ),
            child: Column(
              children: [
                const Text(
                  'Decorated Container',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 12),

                // Network Image
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://picsum.photos/400/200',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),

          const Divider(height: 40),

          // -------------------------------
          // Row Demo
          // -------------------------------

          const Text(
            'Row Demo',
            style: TextStyle(
              fontSize: 24,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 16),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(
                Icons.star,
                color: Colors.orange,
                size: 40,
              ),
              Icon(
                Icons.favorite,
                color: Colors.red,
                size: 40,
              ),
              Icon(
                Icons.thumb_up,
                color: Colors.blue,
                size: 40,
              ),
            ],
          ),

          const Divider(height: 40),

          // -------------------------------
          // Column Demo
          // -------------------------------

          const Text(
            'Column Demo',
            style: TextStyle(
              fontSize: 24,
              color: Colors.purple,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 16),

          Column(
            children: [
              const Text(
                'Beautiful Nature',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              Image.network(
                'https://picsum.photos/400/180',
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
              ),

              const SizedBox(height: 12),

              const Text(
                'This is a description displayed vertically '
                    'using the Column widget. Column arranges its '
                    'children from top to bottom.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),

          const Divider(height: 40),

          // -------------------------------
          // Stack Demo
          // -------------------------------

          const Text(
            'Stack Demo',
            style: TextStyle(
              fontSize: 24,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 16),

          Stack(
            alignment: Alignment.center,
            children: [
              // Background Image
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  'https://picsum.photos/500/250',
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              // Dark Overlay
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),

              // Overlay Text
              const Positioned(
                bottom: 20,
                child: Text(
                  'Text Over Image',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 30),

          // Multiple layered containers
          SizedBox(
            height: 180,
            child: Stack(
              children: [
                Positioned(
                  left: 20,
                  top: 20,
                  child: Container(
                    height: 120,
                    width: 180,
                    color: Colors.blue,
                  ),
                ),

                Positioned(
                  left: 80,
                  top: 50,
                  child: Container(
                    height: 100,
                    width: 180,
                    color: Colors.orange,
                  ),
                ),

                const Positioned(
                  left: 130,
                  top: 85,
                  child: Text(
                    'Layered Widgets',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          const Center(
            child: Text(
              'End of Demonstration',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


