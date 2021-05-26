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
depthTop=0.2;

colorFrame="#333F";
colorText="#F00F";
colorOutline="#7773";


use <fonts/Comfortaa/Comfortaa-VariableFont_wght.ttf>
use <fonts/Bad_Script/BadScript-Regular.ttf>
use <fonts/Charmonman/Charmonman-Regular.ttf>
use <fonts/Charmonman/Charmonman-Bold.ttf>
use <fonts/Nova_Mono/NovaMono-Regular.ttf>
use <fonts/Cutive_Mono/CutiveMono-Regular.ttf>
use <fonts/Press_Start_2P/PressStart2P-Regular.ttf>
use <fonts/Audiowide/Audiowide-Regular.ttf>
use <fonts/Gugi/Gugi-Regular.ttf>
use <fonts/UnifrakturMaguntia/UnifrakturMaguntia-Regular.ttf>
use <fonts/Alfa_Slab_One/AlfaSlabOne-Regular.ttf>

fontList=[
    "Comfortaa:style=Light",
    "Comfortaa:style=Regular",
    "Comfortaa:style=Bold",
    "Bad Script:style=Regular",
    "Charmonman:style=Regular",
    "Charmonman:style=Bold",
    "Nova Mono:display=Regular",
    "Cutive Mono:display=Regular",
    "Press Start 2P:display=Regular",
    "Audiowide:display=Regular",
    "Gugi:display=Regular",
    "Unifraktur Maguntia:display=Regular",
    "Alfa Slab One:display=Regular",
];

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
%color(colorText) linear_extrude(height=depthText) modText();

//Part: Outline
%color(colorOutline) union() {
    linear_extrude(height=depthText) difference() {
        offset(r=sizeOutline)modText();
        modText();
    }
    translate([0,0,depthText], true) linear_extrude(height=depthTop) square([sizeFrameV, sizeFrameH], true);
}

//Part: Base frame
color(colorFrame) linear_extrude(height=depthText) difference(){
    square([sizeFrameV, sizeFrameH], true);
    union(){
        modText();
        modOutline();
    }
}