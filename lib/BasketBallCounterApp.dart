import 'package:basketball_counter_app/cubit/counter_cubit.dart';
import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BasketBallCounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterIncreamentState>(
        builder: (contex, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Points Counter'),
              backgroundColor: Colors.orange,
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamAPoint}',
                          style: TextStyle(
                            fontSize: 90,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .PointsIncreament(team: 'A', buttonNumber: 1);
                          },
                          child: Text(
                            'Add 1 Point',
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .PointsIncreament(team: 'A', buttonNumber: 2);
                          },
                          child: Text(
                            'Add 2 Point',
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .PointsIncreament(team: 'A', buttonNumber: 3);
                          },
                          child: Text(
                            'Add 3 Point',
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 400,
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 1,
                        endIndent: 50,
                        indent: 50,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamBPoint}',
                          style: TextStyle(
                            fontSize: 90,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .PointsIncreament(team: 'B', buttonNumber: 1);
                          },
                          child: Text(
                            'Add 1 Point',
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .PointsIncreament(team: 'B', buttonNumber: 2);
                          },
                          child: Text(
                            'Add 2 Point',
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .PointsIncreament(team: 'B', buttonNumber: 3);
                          },
                          child: Text(
                            'Add 3 Point',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).ResetPoints();
                  },
                  child: Text(
                    'Reset',
                  ),
                ),
              ],
            ),
          );
        },
        listener: (context, state) {});
  }
}
