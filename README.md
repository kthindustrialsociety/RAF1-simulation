# Control Design  
Drone attitude control is made up by an outer P algorithm and an inner PID algorithm, the outer algo outputs the desired angular rate and the inner loop outputs desired moments. This then goes into a mixer which translates them to a desired per-motor rotation rate. This is similar to how beta-flight and other open source systems work. The algorithm modelled here is of the modell free type, meaning that the dynamics of the vehicle is not modelled into the control system.

# Ziegler-Nichols tuning
## p, q (PID)
`K_u = 0.005`  
`T_u = 0.5s`  

`K_p = 0.6 * K_u = 0.003`  
`K_i = 1.2 * K_u / T_u = 0.012`  
`K_d = 0.075 * T_u * K_u = 0.00019`  

## r (PID)
`K_u = 0.05`  
`T_u = 0.1s`  

`K_p = 0.6 * K_u = 0.03` 
`K_i = 1.2 * K_u / T_u = 0.6`  
`K_d = 0.075 * T_u * K_u = 0.00038`  

## roll, pitch (P)
`K_u = 20`  

`K_p = 0.5 * K_u = 10`

## yaw (P)
`K_u = 20`  

`K_p = 0.5 * K_u = 10`