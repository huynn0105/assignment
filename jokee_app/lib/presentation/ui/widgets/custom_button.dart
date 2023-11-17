part of '../home_screen.dart';

class _CustumButton extends StatelessWidget {
  const _CustumButton({
    super.key,
    required this.backgroundColor,
    required this.onPressed,
    required this.title,
  });
  final String title;
  final VoidCallback onPressed;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all<Size>(const Size(140, 40)),
        backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
        elevation: MaterialStateProperty.all<double>(0),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
      ),
      child: Text(title),
    );
  }
}
