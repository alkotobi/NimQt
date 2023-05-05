#pragma once

enum Alignment{AlignLeft,AlignRight,AlignHCenter,AlignJustify,AlignTop,AlignBottom,AlignVCenter,AlignBaseline,AlignCenter,AlignAbsolute,AlignLeading,AlignTrailing,AlignHorizontal_Mask,AlignVertical_Mask};

extern "C"
int qt_alignment_flag(Alignment flag);