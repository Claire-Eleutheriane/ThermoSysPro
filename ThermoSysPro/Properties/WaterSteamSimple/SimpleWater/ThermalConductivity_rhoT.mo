within ThermoSysPro.Properties.WaterSteamSimple.SimpleWater;
function ThermalConductivity_rhoT
  input Modelica.SIunits.Density rho "Density";
  input Modelica.SIunits.Temperature T "Temperature";

  output Modelica.SIunits.ThermalConductivity lambda "Thermal conductivity";
protected
  Modelica.SIunits.Density d1sat;
  Modelica.SIunits.Density d2sat;
  Real x;

algorithm
  d1sat := ThermoSysPro.Properties.WaterSteamSimple.Density.d1sat_T(T);
  d2sat := ThermoSysPro.Properties.WaterSteamSimple.Density.d2sat_T(T);

  if rho > d1sat then
    lambda := ThermoSysPro.Properties.WaterSteamSimple.Conductivity.lambda1_dT(
      rho, T);
  elseif rho < d2sat then
    lambda := ThermoSysPro.Properties.WaterSteamSimple.Conductivity.lambda2_dT(
      rho, T);
  else
     x := (rho-d1sat)/(d2sat - d1sat);
    lambda := ThermoSysPro.Properties.WaterSteamSimple.Conductivity.lambda1_dT(
      d1sat, T)*(1 - x) +
      ThermoSysPro.Properties.WaterSteamSimple.Conductivity.lambda2_dT(d2sat, T)
      *x;
  end if;
  annotation (
    smoothOrder=2,
    Window(
      x=0.34,
      y=0.34,
      width=0.6,
      height=0.6),
    Icon(coordinateSystem(
        preserveAspectRatio=false,
        extent={{-100,-100},{100,100}},
        grid={2,2}), graphics={
        Text(extent={{-134,104},{142,44}}, textString=
                                               "%name"),
        Ellipse(
          extent={{-100,40},{100,-100}},
          lineColor={255,127,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Text(
          extent={{-84,-4},{84,-52}},
          lineColor={255,127,0},
          textString=
               "fonction")}),
    Documentation(info="<html>
<p><b>Copyright &copy; EDF 2002 - 2010</b></p>
</HTML>
<html>
<p><b>ThermoSysPro Version 2.0</b></p>
</HTML>
"));
end ThermalConductivity_rhoT;
