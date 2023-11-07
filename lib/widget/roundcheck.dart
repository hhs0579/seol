import 'package:flutter/material.dart';

class RoundCheckbox extends StatelessWidget {
  final bool value;
  final Function(bool?) onChanged;

  const RoundCheckbox(
      {super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: SizedBox(
        width: Checkbox.width * 1.3,
        height: Checkbox.width * 1.3,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: value ? Colors.blue : Colors.white,
            ),
            borderRadius: BorderRadius.circular(999), // 동그랗게 만듭니다.
          ),
          child: Transform.scale(
            scale: 1.3,
            child: Checkbox(
              value: value,
              onChanged: onChanged,

              shape: const CircleBorder(), // 체크박스의 모양을 동그랗게 만듭니다.
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              checkColor: Colors.white,
              fillColor: MaterialStateProperty.resolveWith(
                (states) {
                  if (states.contains(MaterialState.selected)) {
                    return Colors.blue; // 선택 시 색상
                  }
                  return null; // 기본 값
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
