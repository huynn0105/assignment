import 'package:flutter/material.dart';
import 'package:jokee_app/presentation/blocs/joke_bloc/joke_bloc.dart';
import 'package:jokee_app/utils/color_utils.dart';
import 'package:jokee_app/utils/text_style_utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'widgets/banner.dart';
part 'widgets/custom_button.dart';
part 'widgets/footer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _header(),
      body: Column(
        children: [
          const _Banner(),
          const SizedBox(height: 20),
          BlocBuilder<JokeBloc, JokeState>(
            builder: (context, state) {
              if (state is JokeLoadSuccess) {
                if (state.jokesContent.isEmpty) {
                  return Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "That's all the jokes for today! Come back another day!",
                        style: TextStyleUtils.regular(13),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                } else {
                  final jokeContent = state.jokesContent.first;
                  return Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              jokeContent.content,
                              style: TextStyleUtils.regular(10),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _CustumButton(
                              title: 'This is Funny!',
                              onPressed: () {
                                context.read<JokeBloc>().add(JokeButtonPressed(
                                    isFunny: true, jokeContent: jokeContent));
                              },
                              backgroundColor: ColorUtils.blue,
                            ),
                            const SizedBox(width: 40),
                            _CustumButton(
                              title: 'This is not funny.',
                              onPressed: () {
                                context.read<JokeBloc>().add(JokeButtonPressed(
                                    isFunny: false, jokeContent: jokeContent));
                              },
                              backgroundColor: ColorUtils.green,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }
              }
              return const CircularProgressIndicator();
            },
          ),
          const SizedBox(height: 20),
          const _Footer()
        ],
      ),
    );
  }

  AppBar _header() {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Image.asset(
          'assets/images/hl.png',
          width: 80,
          height: 90,
          fit: BoxFit.fitHeight,
        ),
      ),
      leadingWidth: 80,
      backgroundColor: Colors.white,
      elevation: 0,
      toolbarHeight: 65,
      actions: [
        Row(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Handicrafted by',
                  style: TextStyleUtils.regular(9)
                      .copyWith(color: Colors.black54),
                ),
                const SizedBox(height: 3),
                Text(
                  'Jim HLS',
                  style: TextStyleUtils.medium(11)
                      .copyWith(color: Colors.black87),
                ),
              ],
            ),
            const SizedBox(width: 5),
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/happy.jpg'),
              radius: 23,
            ),
            const SizedBox(width: 14),
          ],
        )
      ],
    );
  }
}

