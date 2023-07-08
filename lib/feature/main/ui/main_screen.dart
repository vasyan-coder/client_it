import 'package:client_it/feature/auth/domain/auth_state/auth_cubit.dart';
import 'package:client_it/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.userEntity});

  final UserEntity userEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("MainScreen"),
          actions: [
            IconButton(
                onPressed: () => context.read<AuthCubit>().refreshToken(),
                icon: const Icon(Icons.refresh)),
            IconButton(
                onPressed: () => context.read<AuthCubit>().logOut(),
                icon: const Icon(Icons.exit_to_app)),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("username: ${userEntity.username}"),
            const SizedBox(height: 20),
            Text("accessToken: ${userEntity.accessToken}"),
            const SizedBox(height: 20),
            Text("refreshToken: ${userEntity.refreshToken}"),
            const SizedBox(height: 20),
          ],
        ));
  }
}
