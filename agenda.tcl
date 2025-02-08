::oo::class create calendario {
    constructor {} {
       set data [clock add [clock seconds] 1 month]
       set x  [clock format $data -format {%d}]
       set quant_d [clock format [clock add $data -$x days ] -format {%d}]
       set cont 0
       set cont2 0
       while {$cont < $quant_d} {
        if {$r < 4} {
            while {$cont < 7} {

            label .$cont -text $cont
            grid .$cont -row $r -column $cont -padx 0 -pady 0 -sticky "nsew"
            incr cont
            incr cont2
                }
        else {puts ola}

        set cont2 0

        }
    }
}




set arquivo [file normalize [file dirname $::argv0]]
source [file join $arquivo "dia.tcl"]
#cria um objeto dia
dia new
calendario new
