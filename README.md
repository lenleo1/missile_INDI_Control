# Missile_INDI_Control
Incremental Nonlinear Dynamic Inversion (INDI) control for a longitudinal missile model.

This report present the derivation and application of an Incremental Nonlinear Dynamic Inversion (INDI) control law for normal acceleration tracking of a missile. The objective is to design a robust control system that can accurately track normal acceleration commands under varying flight conditions. Its performance is compared to a gain-scheduled cascaded controller. Due to limited preparation time, only preliminary results and comparison have been performed in this report.

## Gain-Scheduled Controller
### Structure of the gain-scheduled controller
![image](/img/Az_gain_schedule_controller.png)
### Gain scheduling with angle of attack and Mach number
![image](/img/gain_schedule.png)

## INDI Controller
### Structure of the pitch rate INDI controller
![image](/img/q_inner_loop_indi.png)
### Pitch rate reference model
![image](/img/q_ref_model.png)
### Nonlinear Dynamic Inversion control for the normal acceleration
![image](/img/az_ndi.png)

## Doublet Command Tracking
### Simulation results of the gain-scheduled controller
![image](/img/sim_out_pid.png)
### Simulation results of the INDI controller
![image](/img/sim_out_indi.png)