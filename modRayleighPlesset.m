function dydt = modRayleighPlesset(t,y,vs,R0)
pulse=vs(round(t*1e9+1));

S = 72.8*1e-3;rho = 1000;g = 4/3 ;c = 1500;mu = 1.002*1e-3;P0 = 101325;h = R0/8.86;

Pgas=(P0+2*S/R0)*((R0^3-h^3)/(y(1)^3-h^3))^g;
dPgas=-3*g*Pgas*(y(1)^2/(y(1)^3-h^3))*y(2);

dydt = zeros(2,1);
dydt(1) = y(2);
dydt(2) = ((Pgas-P0-(pulse)-(4*mu*(y(2)/y(1)))-2*S/y(1)+y(1)*dPgas/c)/(rho*y(1)))-1.5*(y(2)^2/y(1));
%dydt(3) = Pgas;
%dydt(4) = dPgas;