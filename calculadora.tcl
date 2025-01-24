wm geometry . 180x160+100+100

entry .texto -width 20
grid .texto -row 0 -column 0 -columnspan 5 

button .soma -text "+" -command soma
grid .soma -row 4 -column 3 -padx 0 -pady 0 -sticky "nsew"

button .dividir -text "/" -command dividir
grid .dividir -row 1 -column 3 -padx 0 -pady 0 -sticky "nsew"

button .multiplicar -text "*" -command multiplicar
grid .multiplicar -row 2 -column 3 -padx 0 -pady 0 -sticky "nsew"

button .igual -text "=" -command igual
grid .igual -row 4 -column 2 -padx 0 -pady 0 -sticky "nsew"

button .menos -text "-" -command menos
grid .menos -row 3 -column 3 -padx 0 -pady 0 -sticky "nsew"

button .0 -text "0" -command zero
grid .0 -row 4 -column 0 -padx 0 -pady 0 -sticky "nsew"

button .ponto -text "." -command ponto
grid .ponto -row 4 -column 1 -padx 0 -pady 0 -sticky "nsew"

button .um -text "1" -command um
grid .um -row 3 -column 0 -padx 0 -pady 0 -sticky "nsew"

button .dois -text "2" -command dois
grid .dois -row 3 -column 1 -padx 0 -pady 0 -sticky "nsew"

button .tres -text "3" -command tres
grid .tres -row 3 -column 2 -padx 0 -pady 0 -sticky "nsew"

button .quatro -text "4" -command quatro
grid .quatro -row 2 -column 0 -padx 0 -pady 0 -sticky "nsew"

button .cinco -text "5" -command cinco 
grid .cinco -row 2 -column 1 -padx 0 -pady 0 -sticky "nsew"

button .seis -text "6" -command seis
grid .seis -row 2 -column 2 -padx 0 -pady 0 -sticky "nsew"

button .sete -text "7" -command sete 
grid .sete -row 1 -column 0 -padx 0 -pady 0 -sticky "nsew"

button .oito -text "8" -command oito 
grid .oito -row 1 -column 1 -padx 0 -pady 0 -sticky "nsew"

button .nove -text "9" -command nove
grid .nove -row 1 -column 2 -padx 0 -pady 0 -sticky "nsew"

button .limpar -text "limpar" -command limpar
grid .limpar -row 4 -column 3 -padx 0 -pady 0 -sticky "nsew"

proc soma {} {
    .texto insert end "+"
}


proc soma {} {
    .texto insert end "+"
}
proc multiplicar {} {
    .texto insert end "*"
}

proc dividir {} {
    .texto insert end "/"
}

proc menos {} {
    .texto insert end "-"
}

proc igual {} {
        set num [.texto get]
        .texto delete 0 end 
        set resunt [ exec echo $num | bc ]
        .texto insert 0 $resunt
}

proc zero {} {
.texto insert end "0"

}

proc ponto {} {
.texto insert end "."

}

proc um {} {
.texto insert end "1"

}

proc dois {} {
.texto insert end "2"

}

proc tres {} {
.texto insert end "3"

}

proc quatro {} {
.texto insert end "4"

}

proc cinco {} {
.texto insert end "5"

}

proc seis {} {
.texto insert end "6"

}

proc sete {} {
.texto insert end "7"

}

proc oito {} {
.texto insert end "8"

}

proc nove {} {
.texto insert end "9"

}

proc limpar {} {
    .texto delete 0 end
}