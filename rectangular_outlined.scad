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

/*
Instructions:
    Put a % in front of all lines below a //Part except one.
    Then render and export one part at a time.
*/

strText="Test!";
fontSel=1; // [0: Comfortaa Light, 1: Comfortaa Regular, 2: Comfortaa Bold, 3: Bad Script Regular, 4:Charmonman Regular, 5:Charmonman Bold, 6: Nova Mono Regular, 7: Cutive Mono Regular, 8: Preess Start 2P Regular, 9: Audiowide, 10: Gugi, 11: Unifaktur Maguita Regular, 12: Alfa Slab One Regular]

sizeText=20;
sizeOutline=1.5;
sizeFrameV=80;
sizeFrameH=40;

depthText=1.6;
depthTop=0.15; 

/* Colors in Hex #RRGGBB / #RRGGBBAA / #RGB / #RGBA */

//Color of the text
colorText="#F00F";
//Color of the outline around text
colorOutline="#7773";
//Color of base plate outside outline
colorBase="#333F";
//Color of topcoat
colorTop="#7773";

include <fonts.scad>

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

//Part: Text
color(colorText) linear_extrude(height=depthText) modText();

//Part: Outline
%color(colorOutline) linear_extrude(height=depthText) difference() {
    modOutline();
    modText();
}


//Part: Base plate
%color(colorBase) linear_extrude(height=depthText) difference(){
    square([sizeFrameV, sizeFrameH], true);
    union(){
        modText();
        modOutline();
    }
}

//Part: Top coat
%color(colorTop) translate([0,0,depthText]) linear_extrude(height=depthTop) square([sizeFrameV, sizeFrameH], true);