import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/core/constants.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({
    required this.isInGrid,
    super.key,
  });
  final bool isInGrid;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: white,
        border: Border.all(color: primary, width: 2),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: primary.withOpacity(0.5),
            offset: Offset(4, 4),
          ),
        ],
      ),
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'This is going to be a title',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 15, color: gray900),
          ),
          SizedBox(height: 4),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: List.generate(
                    3,
                    (index) => Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: gray100,
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                          margin: EdgeInsets.only(right: 4),
                          child: Text(
                            'fine fine Mwawiieeeee',
                            style: TextStyle(fontSize: 11, color: gray700),
                          ),
                        ))),
          ),
          SizedBox(height: 4),
          if (isInGrid)
            Expanded(
              child: Text(
                'some content',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: gray700,
                ),
              ),
            )
          else
            Text(
              'some content',
              style: TextStyle(
                color: gray700,
              ),
            ),
          Row(
            children: [
              Text(
                '11 oct 2024',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: gray500,
                ),
              ),
              Spacer(),
              FaIcon(
                FontAwesomeIcons.trash,
                color: gray500,
                size: 16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
