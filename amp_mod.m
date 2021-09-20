time = 0:0.001:10;

baseband = sin(time); 
carrier = 10*sin(30*time);

dsbsc_mod = baseband.*carrier;
ssbsc_mod = abs(dsbsc_mod);

subplot(2,1,1);
plot(time,dsbsc_mod);
xlabel("Time");
ylabel("Amplitude");
title("DSBSC");

subplot(2,1,2);
plot(time,ssbsc_mod);
xlabel("Time");
ylabel("Amplitude");
title("SSBSC");
