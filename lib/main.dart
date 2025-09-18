import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Leader Dashboard',
      theme: ThemeData.dark(),
      home: const LeaderHome(),
    );
  }
}

class LeaderHome extends StatelessWidget {
  const LeaderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A192F), // esports dark theme
      appBar: AppBar(
        backgroundColor: const Color(0xFF1A1F38),
        elevation: 0,
        title: const Text(
          "Leader Dashboard",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // 🔹 Profile Section
            Row(
              children: [
                const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage(
                    "assets/images/Drawer profile Pic with background.jpg",
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Raees Khan",
                        style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                    Text("Team Esports",
                        style: TextStyle(color: Colors.grey, fontSize: 14)),
                  ],
                )
              ],
            ),

            const SizedBox(height: 20),

            // 🔹 Quick Stats Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildStatCard("Matches", "25", Icons.sports_esports),
                _buildStatCard("Wins", "18", Icons.emoji_events),
                _buildStatCard("Rank", "#3", Icons.star),
              ],
            ),

            const SizedBox(height: 20),

            // 🔹 Recent Matches Section
            const Text("Recent Matches",
                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            _buildMatchTile("Team Alpha", "Win", Colors.green),
            _buildMatchTile("Team Bravo", "Loss", Colors.red),
            _buildMatchTile("Team Gamma", "Win", Colors.green),

            const SizedBox(height: 20),

            // 🔹 Upcoming Events Section
            const Text("Upcoming Events",
                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            _buildEventCard("Championship Qualifier", "20 Sept 2025"),
            _buildEventCard("Friendly Match", "25 Sept 2025"),
          ],
        ),
      ),
    );
  }

  // 🔹 Widget for Stats
  static Widget _buildStatCard(String title, String value, IconData icon) {
    return Container(
      width: 100,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color(0xFF1A1F38),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.white, size: 28),
          const SizedBox(height: 8),
          Text(value,
              style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
          Text(title, style: const TextStyle(color: Colors.grey, fontSize: 14)),
        ],
      ),
    );
  }

  // 🔹 Widget for Recent Matches
  static Widget _buildMatchTile(String opponent, String result, Color resultColor) {
    return Card(
      color: const Color(0xFF1A1F38),
      child: ListTile(
        leading: const Icon(Icons.sports_esports, color: Colors.white),
        title: Text(opponent, style: const TextStyle(color: Colors.white)),
        trailing: Text(result, style: TextStyle(color: resultColor, fontWeight: FontWeight.bold)),
      ),
    );
  }

  // 🔹 Widget for Events
  static Widget _buildEventCard(String eventName, String date) {
    return Card(
      color: const Color(0xFF1A1F38),
      child: ListTile(
        leading: const Icon(Icons.event, color: Colors.white),
        title: Text(eventName, style: const TextStyle(color: Colors.white)),
        subtitle: Text(date, style: const TextStyle(color: Colors.grey)),
      ),
    );
  }
}
