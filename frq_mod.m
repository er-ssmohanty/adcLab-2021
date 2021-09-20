 ## Sampling Frequency
 fs = 400;

 ## Carrier Frequency
 fc = 200;

 ## Time Duration
 time = (0: 1 ./ fs:0.2)';

 ## Create two sinusoidal signals with frequencies 30 Hz and 60 Hz
 x = sin (2 .* pi .* 30 .* time) .+ 2 .* sin (2 .* pi .* 60 .* time);  

 ## Frequency Deviation
 fDev = 50;

 ## Frequency modulate x
 y = fmmod (x, fc, fs, fDev);

 ## plotting
 plot (time, x, 'r', time, y, 'b--')
 xlabel ('Time (s)')
 ylabel ('Amplitude')
 legend ('Original Signal','Modulated Signal')
