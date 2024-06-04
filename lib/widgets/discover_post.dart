import 'package:flutter/material.dart';

class DiscoverPost extends StatefulWidget {
  const DiscoverPost({super.key});

  @override
  State<DiscoverPost> createState() => _DiscoverPostState();
}

class _DiscoverPostState extends State<DiscoverPost> {
  @override
  Widget build(BuildContext context) {
    return Center(
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Container(
              width: 300,
              padding:const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.yellow[100],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      'https://via.placeholder.com/300x200.png', // Replace with your image URL
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                const  SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'The Don Jon',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        '(6% Alc)',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                 const SizedBox(height: 4),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.grey,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Mike Johnson',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      _buildTag('Fruity', Colors.cyan[100]!),
                      _buildTag('Slightly Bitter', Colors.green[100]!),
                      _buildTag('Bright', Colors.yellow[100]!),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Bright hops dance with citrus notes atop a caramel malt base, delivering a balanced brew with a ...more',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[800],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'View 12 Compliments',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
  
    );
  }

  Widget _buildTag(String text, Color color) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
  
}