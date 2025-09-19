// leader_home_improved.dart
// Improved, safer and responsive version of the UI you shared.
// Fixes: overflow, layout/padding misuse, infinite heights, nested scrolls,
//        alignment problems and makes a reusable stat widget + radar chart.

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_radar_chart/flutter_radar_chart.dart';

void main() => runApp(const LeaderApp());

class LeaderApp extends StatelessWidget {
  const LeaderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Leader Home (Improved)',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF0A192F),
        scaffoldBackgroundColor: const Color(0xFF0A192F),
        useMaterial3: false,
      ),
      home: const LeaderHomeScreen(),
    );
  }
}

class LeaderHomeScreen extends StatefulWidget {
  const LeaderHomeScreen({Key? key}) : super(key: key);

  @override
  State<LeaderHomeScreen> createState() => _LeaderHomeScreenState();
}

class _LeaderHomeScreenState extends State<LeaderHomeScreen> {
  // Radar chart data (dummy / fixed values for now)
  final List<int> _ticks = const [10, 20, 30, 40, 50];
  final List<String> _features = const [
    'Kills',
    'Damage',
    'Assists',
    'Survival',
    'Rescue'
  ];
  final List<List<num>> _data = const [
    [35, 42, 28, 40, 22],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Team Dashboard'),
        backgroundColor: const Color(0xFF0A192F),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          )
        ],
      ),
      drawer: _buildDrawer(),
      bottomNavigationBar: _buildBottomNav(),

      // Use SafeArea + single scrollable view for the page
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTopBanner(),
              const SizedBox(height: 12),

              // Player card (image left, stats right)
              _buildPlayerCard(),
              const SizedBox(height: 16),

              // Radar chart card - fixed height to avoid RenderFlex infinite overflow
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 6,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Performance (Radar Chart)',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 12),

                      // Give RadarChart a bounded box (height) to prevent "infinite" overflow
                      Center(
                        child: SizedBox(
                          height: 300, // adjust as needed
                          width: 300,
                          child: RadarChart(
                            ticks: _ticks,
                            features: _features,
                            data: _data,
                            graphColors: [Colors.deepPurpleAccent],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Optional: more content below...
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopBanner() {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        color: const Color(0xFF0E2740),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.blueGrey,
            image: const DecorationImage(
              image: AssetImage('assets/images/profile.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: const Text('Raees Khan', style: TextStyle(color: Colors.white)),
        subtitle: const Text('Team Leader', style: TextStyle(color: Colors.white70)),
        trailing: const Icon(Icons.star_border, color: Colors.white),
      ),
    );
  }

  Widget _buildPlayerCard() {
    // Use Card to get nice shadow & padding
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Left: player picture (rectangle, NOT CircleAvatar per your request)
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: AssetImage('assets/images/Leader.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(width: 12),

            // Right: name, role and stats row
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Player Name',
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  const Text('Player Role', style: TextStyle(fontSize: 13)),
                  const SizedBox(height: 12),

                  // Stats row: use spaceBetween so items share space evenly and avoid overflow
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _statColumn(
                        FaIcon(FontAwesomeIcons.crosshairs, size: 22),
                        'Kills',
                        '24.1m',
                        color: Colors.red,
                      ),
                      _statColumn(
                        FaIcon(FontAwesomeIcons.bolt, size: 22),
                        'Damage',
                        '764',
                        color: Colors.orange,
                      ),
                      _statColumn(
                        FaIcon(FontAwesomeIcons.handshake, size: 22),
                        'Assists',
                        '5',
                        color: Colors.blue,
                      ),
                      _statColumn(
                        const Icon(Icons.timer, size: 22),
                        'Survival',
                        '24.1m',
                        color: Colors.green,
                      ),
                      _statColumn(
                        const Icon(Icons.medical_services, size: 22),
                        'Rescue',
                        '5',
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _statColumn(Widget icon, String label, String value, {Color? color}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // icon (if you want color, wrap in IconTheme)
        IconTheme(
          data: IconThemeData(size: 22, color: color ?? Colors.white),
          child: icon,
        ),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle(fontSize: 12)),
        Text(value, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: Color(0xFF1A1F38)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset('assets/images/Drawer profile Pic with background.jpg',
                      width: 80, height: 80, fit: BoxFit.cover),
                ),
                const SizedBox(height: 8),
                const Text('Raees Khan', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          ListTile(leading: const Icon(Icons.groups), title: const Text('Team Management')),
          ListTile(leading: const Icon(Icons.sports_esports), title: const Text('Matches')),
          ListTile(leading: const Icon(Icons.bar_chart), title: const Text('Analytics')),
          ListTile(leading: const Icon(Icons.notifications_outlined), title: const Text('Notifications')),
          ListTile(leading: const Icon(Icons.settings), title: const Text('Settings')),
          ListTile(leading: const Icon(Icons.logout_sharp), title: const Text('Logout')),
        ],
      ),
    );
  }

  Widget _buildBottomNav() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color(0xFF0A192F),
      selectedItemColor: Colors.white,
      unselectedItemColor: const Color(0xFFB0B0B0),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.groups), label: 'Team'),
        BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Analytics'),
        BottomNavigationBarItem(icon: Icon(Icons.show_chart), label: 'My Performance'),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
      ],
    );
  }
}
