# matlab

 to use modRaylieghPlesset
 
    vs=pressure pulse;
    R0=1e-6; % initial radius
    tspan = linspace(0,99e-9,1000);  %time
    y0 = [R0 0]; %initial condition, Ri and Vi
    [t,y1] = ode45(@(t,y) modRayleighPlesset(t,y,vs,R0), tspan, y0);
    plot(t*1e9,y1(:,1)/1e-6,'-','Linewidth',2,'color',[0 0 0]+0.8,'DisplayName','Ri = 1 \mum') 
