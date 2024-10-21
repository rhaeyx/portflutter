import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        Image.asset(
          'assets/icon.png',
          height: 40,
          width: 40,
        ),

        // Navigation Items
        screenWidth > 500
            ? const Row(
                children: [
                  NavItem(title: 'Home'),
                  SizedBox(width: 20),
                  NavItem(title: 'About'),
                  SizedBox(width: 20),
                  NavItem(title: 'Now'),
                  SizedBox(width: 20),
                  NavItem(title: 'Featured'),
                ],
              )
            : DropdownNavigation(),

        // Message Icon
        IconButton(
          icon: const Icon(
            Icons.mail,
            color: Color.fromRGBO(81, 81, 81, 1),
          ),
          onPressed: () {
            // Handle message button press
          },
        ),
      ],
    );
  }
}

class NavItem extends StatefulWidget {
  final String title;
  const NavItem({required this.title});

  @override
  _NavItemState createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() {
        _isHovered = true;
      }),
      onExit: (_) => setState(() {
        _isHovered = false;
      }),
      child: Text(
        widget.title,
        style: TextStyle(
          fontSize: 16,
          color: _isHovered ? Colors.white : Color.fromRGBO(132, 132, 132, 1),
        ),
      ),
    );
  }
}

class DropdownNavigation extends StatefulWidget {
  @override
  _DropdownNavigationState createState() => _DropdownNavigationState();
}

class _DropdownNavigationState extends State<DropdownNavigation> {
  String? selectedPage;

  // List of navigation options
  final List<String> pages = ['Home', 'About', 'Now', 'Featured'];

  // Function to handle navigation (you can add actual navigation logic here)
  void _navigateTo(String? page) {
    setState(() {
      selectedPage = page;
    });

    // Handle actual navigation logic here
    if (page != null) {
      print('Navigating to: $page');
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedPage,
      hint: const Text(
        'Menu',
        style: const TextStyle(
          fontSize: 16,
          color: Color.fromRGBO(81, 81, 81, 1),
        ),
      ),
      dropdownColor: const Color.fromRGBO(46, 46, 46, 1),
      icon: const Icon(Icons.vertical_distribute_outlined),
      underline: const SizedBox(),
      onChanged: (String? newValue) {
        _navigateTo(newValue);
      },
      focusColor: const Color.fromRGBO(36, 36, 36, 1),
      items: pages.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              color: Color.fromRGBO(81, 81, 81, 1),
            ),
          ),
        );
      }).toList(),
    );
  }
}
