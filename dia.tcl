::oo::class create dia {
	variable janela
	constructor {} {
		set d [clock format [clock seconds] -format {%d} ]
		set janela [toplevel ".dia[clock clicks]"]
		wm overrideredirect $janela 1
		wm resizable $janela 0 0
		wm geometry $janela 100x100+0+600
		set canvas [canvas $janela.canvas -width 100 -height 20 -bg "red"]
		set numero [canvas $janela.numero -width 100 -height 70 ]
		pack $canvas
		pack $numero

		$numero create text 50 30 -text "$d" -fill "black"  -font "Arial 34 bold"
	}

 destructor {
	destroy $dia
}
}
