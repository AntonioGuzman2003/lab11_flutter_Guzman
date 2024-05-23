import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Eventos Deportivos'),
        ),
        body: ListView(
          children: [
            EventCard(
              eventName: 'Maratón Ciudad',
              sport: 'Atletismo',
              date: '15 de junio de 2024',
              location: 'Ciudad Lima',
              imageUrl: 'https://brooksrunning.com.mx/cdn/shop/articles/MicrosoftTeams-image_34.jpg?v=1669331420',
            ),
            EventCard(
              eventName: 'Final de la Copa Mundial',
              sport: 'Fútbol',
              date: '20 de julio de 2024',
              location: 'Estadio Nacional',
              imageUrl: 'https://concepto.de/wp-content/uploads/2015/02/futbol-1-e1550783405750.jpg',
            ),
            EventCard(
              eventName: 'Campeonato de Tenis',
              sport: 'Tenis',
              date: '10 de agosto de 2024',
              location: 'Club de Tenis Peru',
              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzQcpB0Y0nGGGA4Ku0xuVcUXOVnXdK1_v5bQme-MFcwNut8Ri_jEaShA0VmP-T7ePV7Ls&usqp=CAU',
            ),
             EventCard(
              eventName: 'Campeonato de Natacion',
              sport: 'Natacion',
              date: '10 de Abril de 2024',
              location: 'Miraflores',
              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrodRgPravNS9xYOHRbygtvkNLtH4-bdE92vZYu66EZw&s',
            ),
             EventCard(
              eventName: 'Campeonato de Basquet',
              sport: 'Tenis',
              date: '13 de Mayo de 2024',
              location: ' Estadio Nacional',
              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJQnFeX44QQZl_gEFFGP4lT6Xkrm59tOHwb7ihufbmwg&s',
            )
          ],
        ),
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final String eventName;
  final String sport;
  final String date;
  final String location;
  final String imageUrl;

  const EventCard({
    Key? key,
    required this.eventName,
    required this.sport,
    required this.date,
    required this.location,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 180,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                placeholder: (context, url) => Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => Icon(Icons.error),
                fit: BoxFit.cover,
                width: double.infinity, 
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Evento: $eventName',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'Deporte: $sport',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 4),
                Text(
                  'Fecha: $date',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 4),
                Text(
                  'Ubicación: $location',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
