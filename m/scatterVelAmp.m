strlist2 = {'smog_0','smog_1','smog_2','smog_3','smog_4'}
str = strlist2{5};
str2 = '.mat';
name = strcat(str, str2); 
data = load(name)
vel = data.data.saccade.peakVelocity
amp = data.data.saccade.amplitude
fig = scatter(vel,amp)
set(gca, 'XScale', 'log');
set(gca,'YScale','log')
xlim([0,1000])
xticks([0.1,1,10,100,1000])
xlabel('Amplitude (degree)')
ylabel('Peak Velocity (degree /sec)')
ylim([0,100])
str4='amp_vel_'
str3 = '.png'
conbimed_str = strcat(str4,str,str3) 
saveas(fig,conbimed_str)