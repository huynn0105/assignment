part of '../home_screen.dart';
class _Banner extends StatelessWidget {
  const _Banner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: ColorUtils.green),
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 25),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'A joke a day keeps the doctor away',
            style:
                TextStyleUtils.regular(17).copyWith(color: Colors.white),
          ),
          const SizedBox(height: 12),
          Text(
            'If you joke wrong way, your teeth have to pay. (Serious)',
            style:
                TextStyleUtils.regular(9).copyWith(color: Colors.white),
          )
        ],
      ),
    );
  }
}
