import 'package:flutter/material.dart';
import 'home_footer.dart';



class set_page extends StatefulWidget {
   final String username;
  final String email;
  set_page({required this.username, required this.email});
  @override
  slide_toggle createState() => slide_toggle();
}

// ignore: must_be_immutable
class slide_toggle extends State<set_page> {
  double _sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);


    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Theme Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text(
              'Toggle Theme',
              style: theme.textTheme.headlineSmall,
            ),
            Switch(
              value: theme.brightness == Brightness.dark,
              onChanged: (_) {
                // Toggle the theme by updating the MaterialApp widget
                runApp(
                  MaterialApp(
                    theme: theme.brightness == Brightness.light
                        ? ThemeData.dark()
                        : ThemeData.light(),
                    home: set_page(username: widget.username, email:widget.email),
                  ),
                );
              },
            ),
            Slider(
          value: _sliderValue,
          onChanged: (value) {
            setState(() {
              _sliderValue = value;
            });
          },
        ),
          ],
        ),
      ),
     floatingActionButton: FloatingFooterPage(username: widget.username, email:widget.email),
    );
  }
  


}
