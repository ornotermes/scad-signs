/*
           DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
                   Version 2, December 2004
 
Copyright (C) 2021 Rikard Lindström <ornotermes@gmail.com>

Everyone is permitted to copy and distribute verbatim or modified
copies of this license document, and changing it is allowed as long
as the name is changed.
 
           DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
  TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

 0. You just DO WHAT THE FUCK YOU WANT TO.
*/

module modText() {
    text(strText, 
        font = fontList[fontSel], 
        valign="center",
        halign="center",
        size=sizeText
    );
}

module modOutline() {
    offset(r=sizeOutline)modText();
}

module modOutline2() {
    offset(r=sizeOutline2)modOutline();
}
