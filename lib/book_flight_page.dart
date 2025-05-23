import 'package:flutter/material.dart';

class BookFlightPage extends StatefulWidget {
  const BookFlightPage({super.key});

  @override
  State<BookFlightPage> createState() => _BookFlightPageState();
}

class _BookFlightPageState extends State<BookFlightPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(300),
                bottomRight: Radius.circular(300),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  spreadRadius: 2,
                )
              ],
            ),
            child: Center(
              child: Image.asset('assets/images/frame.png'),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Book your flight',
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black, // Changed from white to black for visibility
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildFlightTypeButton(
                'One way',
                isSelected: true,
                color: const Color.fromRGBO(64, 147, 206, 1),
              ),
              const SizedBox(width: 10),
              _buildFlightTypeButton(
                'Round Trip',
                isSelected: false,
                color: const Color.fromRGBO(215, 234, 248, 1),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8,
                  spreadRadius: 2,
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildFlightInputField(label: 'From'),
                const SizedBox(height: 12),
                _buildFlightInputField(label: 'To'),
                const SizedBox(height: 12),
                _buildFlightInputField(label: 'Date'),
                const SizedBox(height: 20),
                _buildViewFlightsButton(),
              ],
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _buildFlightTypeButton(String text, {required bool isSelected, required Color color}) {
    return Container(
      height: 40,
      width: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
        ),
        onPressed: () {
          setState(() {
            // Handle button selection state
          });
        },
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14,
            color: isSelected ? Colors.white : const Color.fromRGBO(64, 147, 206, 1),
          ),
        ),
      ),
    );
  }

  Widget _buildFlightInputField({required String label}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 4),
        SizedBox(
          height: 45,
          child: TextField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              fillColor: const Color.fromRGBO(224, 237, 246, 1),
              filled: true,
              contentPadding: const EdgeInsets.symmetric(horizontal: 12),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildViewFlightsButton() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(64, 147, 206, 1),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
        ),
        onPressed: () {
          // Handle view flights action
        },
        child: const Text(
          'View Flights',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
