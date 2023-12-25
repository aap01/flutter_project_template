import 'package:equatable/equatable.dart';

class Profile extends Equatable {
  final String name;
  final String imageUrl;

  const Profile({
    required this.name,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [
        name,
        imageUrl,
      ];
}
