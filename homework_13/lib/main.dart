import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: LiveScoresPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class LiveScoresPage extends StatelessWidget {
  const LiveScoresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Live Scores",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: const [
                  Expanded(
                    child: MatchCard(
                      team1: "Leeds United",
                      team2: "Liverpool",
                      logo1: "assets/pic2.jpg",
                      logo2: "assets/pic3.jpg",
                      score1: 0,
                      score2: 2,
                      minute: 83,
                      leagueLogo: "assets/pic5.jpg",
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: MatchCard(
                      team1: "Espanyol",
                      team2: "Atl. Madrid",
                      logo1: "assets/pic4.jpg",
                      logo2: "assets/pic1.jpg",
                      score1: 1,
                      score2: 0,
                      minute: 72,
                      leagueLogo: "assets/pic5.jpg",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MatchCard extends StatelessWidget {
  final String team1;
  final String team2;
  final String logo1;
  final String logo2;
  final int score1;
  final int score2;
  final int minute;
  final String leagueLogo;

  const MatchCard({
    super.key,
    required this.team1,
    required this.team2,
    required this.logo1,
    required this.logo2,
    required this.score1,
    required this.score2,
    required this.minute,
    required this.leagueLogo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF2E2E2E),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(leagueLogo, width: 20, height: 20),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Text(
                  "LIVE",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(logo1, width: 40, height: 40),
                    const SizedBox(height: 6),
                    Text(
                      team1,
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              const Text("VS", style: TextStyle(color: Colors.white70)),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(logo2, width: 40, height: 40),
                    const SizedBox(height: 6),
                    Text(
                      team2,
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "$score1",
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "$minute mins",
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
              Text(
                "$score2",
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
