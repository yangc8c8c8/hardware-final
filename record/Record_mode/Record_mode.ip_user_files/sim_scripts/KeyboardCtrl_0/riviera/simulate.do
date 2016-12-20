onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+KeyboardCtrl_0 -L unisims_ver -L unimacro_ver -L secureip -L xil_defaultlib -O5 xil_defaultlib.KeyboardCtrl_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {KeyboardCtrl_0.udo}

run -all

endsim

quit -force
