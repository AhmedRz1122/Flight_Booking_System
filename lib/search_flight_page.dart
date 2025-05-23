import 'package:flutter/material.dart';

class SearchFlightPage extends StatefulWidget {
  const SearchFlightPage({super.key});

  @override
  State<SearchFlightPage> createState() => _SearchFlightPageState();
}

class _SearchFlightPageState extends State<SearchFlightPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/person.png',
                      height: 40,
                      width: 40,
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      'Hi Tania!',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Icon(Icons.notifications, color: Colors.white),
              ],
            ),
            const SizedBox(height: 40),

            // Title
            Text(
              'Where you want to go?',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 10),

            // Search Field
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.4),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search a flight',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),

            // Upcoming Trips
            Text(
              'Upcoming Trips',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromRGBO(28, 94, 133, 1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '10 May, 12:30 pm',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        '11 May, 08:15 am',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ABC',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Divider(
                                color: Colors.white,
                                thickness: 1,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Icon(
                                Icons.flight,
                                color: Colors.white,
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                color: Colors.white,
                                thickness: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'XYZ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(173, 206, 225, 1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            'Abianca, Sodaium',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(63, 126, 164, 1),
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Flexible(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(173, 206, 225, 1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            'Xyzaira, Filanto',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(63, 126, 164, 1),
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),

            // Popular Destinations
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Destinations',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),

            // Popular Destinations Grid
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildPopularDestination(
                    'assets/images/Paris.png',
                    'Paris',
                    'France',
                  ),
                  const SizedBox(width: 10),
                  _buildPopularDestination(
                    'assets/images/Rome.png',
                    'Rome',
                    'Italy',
                  ),
                  const SizedBox(width: 10),
                  _buildPopularDestination(
                    'assets/images/Istanbul.png',
                    'Istanbul',
                    'Turkey',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildPopularDestination(String img, String city, String country) {
    return Container(
      width: 110,
      height: 180,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset(
              img,
              height: 110,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            city,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            country,
            style: TextStyle(fontSize: 12, color: Colors.grey[600]),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}