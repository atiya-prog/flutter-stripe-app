part of 'helpers.dart';

Route fadeInNavigator( BuildContext context, Widget page ) {

  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionDuration: const Duration( milliseconds: 300 ),
    transitionsBuilder: ( context, animation, _, child ) {

      return FadeTransition(
        opacity: Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(parent: animation, curve: Curves.easeOut )
        ),
        child: child
      );

    }
    
  );

}