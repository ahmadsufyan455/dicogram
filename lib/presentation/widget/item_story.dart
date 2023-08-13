import 'package:cached_network_image/cached_network_image.dart';
import 'package:dicogram/utils/text_styles.dart';
import 'package:flutter/material.dart';

import '../../utils/helper.dart';

class ItemStory extends StatelessWidget {
  final String name;
  final String photoUrl;
  final String description;
  final double? lat;
  final double? lon;
  final String createdAt;

  const ItemStory({
    super.key,
    required this.name,
    required this.photoUrl,
    required this.description,
    this.lat,
    this.lon,
    required this.createdAt,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/man.png'),
                  ),
                  const SizedBox(width: 16.0),
                  Text(
                    name,
                    style: TextStyles.title,
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              if (lat != null && lon != null)
                FutureBuilder<String?>(
                  future: Helper.getCity(lat!, lon!),
                  builder: (context, snapshot) {
                    return Text(
                      snapshot.data ?? 'Unknown',
                      style: TextStyles.subtitle,
                    );
                  },
                ),
            ],
          ),
          const SizedBox(height: 10.0),
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: CachedNetworkImage(
              imageUrl: photoUrl,
              placeholder: (context, url) => const Center(
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: CircularProgressIndicator(),
                ),
              ),
              errorWidget: (context, url, error) => Icon(
                Icons.error,
                size: 100,
                color: Colors.red.shade300,
              ),
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            description,
            style: TextStyles.body,
          ),
          const SizedBox(height: 4.0),
          Text(
            Helper.formatTimestamp(context, createdAt),
            style: TextStyles.subtitle.copyWith(color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
