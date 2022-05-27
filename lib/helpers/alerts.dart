part of 'helpers.dart';

showLoading(BuildContext context) {
  showDialog(
    context: context, 
    barrierDismissible: false,
    builder: (context) => const AlertDialog(
      title: Text('Wait...'),
      content: LinearProgressIndicator(),
    )
  );
}

showAlert(BuildContext context, String title, String content) {
  showDialog(
    context: context,     
    barrierDismissible: false,
    builder: (context) => AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        MaterialButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Ok'),
        )
      ],
    )
  );
}