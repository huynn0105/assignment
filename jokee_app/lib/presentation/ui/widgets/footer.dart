part of '../home_screen.dart';

class _Footer extends StatelessWidget {
  const _Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Divider(),
          Text(
            'This appis created as part of HLsolutions program. The materials con-tained on this website are provided for genral infomation only and do not constitule any from of advice. HLS assummes no responsibility for the accuracy of any partcular statement and accepts no liability for any loss of damage which may arise from reliance on the infor-mation contained on this site.',
            style: TextStyleUtils.regular(8)
                .copyWith(color: Colors.black.withOpacity(0.65)),
                textAlign: TextAlign.center,
          ),
          const SizedBox(height: 9),
          Text(
            'Copyright 2021 HLS',
            style: TextStyleUtils.regular(10),
          ),
        ],
      ),
    );
  }
}