# HAWK Pedestrian Crosswalk Controller (Verilog)

This project implements a **HAWK (High-Intensity Activated CrossWalk)** traffic control system using a controller FSM, a datapath counter, and a testbench simulation, by programming **Verilog HDL** on a Basys-3 FPGA.

## FSM behavior
The HAWK system is normally OFF.  
When a pedestrian presses the button (**YP = 1**), the HAWK crosswalk executes the following sequence:

1. **Flashing yellow** — Drivers slow down  
2. **Solid yellow** — Drivers prepare to stop  
3. **Solid red** — Drivers must stop, pedestrian receives WALK  
4. **Pedestrian detected (NS = 0)** — Stay in solid red  
5. Once NS = 1, begin counting up to **10 clock cycles**  
6. When count = 10 → **Flashing red** — Drivers may proceed cautiously

The outputs of the system include:
- **Pedestrian signals:**  
  - `HDNW` : “Do Not Walk”  
  - `HW`   : “Walk”
- **Vehicle signals:**  
  - `HYL` : Yellow light  
  - `HRL` : Red light
- **Control signals to datapath:**  
  - `clr_count`  
  - `inc_count`
 
## FPGA Constraints

LED outputs
  ```
  LED[3] = HYL
  LED[2] = HRL
  LED[1] = HDNW
  LED[0] = HW
  ```
  
State output:
  ```
  LED[15:12] = present_state
  ```
  
Inputs:
  ```
  Switch SW[0] → YP
  Switch SW[1] → NS
  Button btnC → clock
  ```
  
Disable internal clock with:
  ```
  set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF]
  ```

## Tools Used
- Verilog HDL
- Xilinx Vivado
- Basys-3 FPGA development board

## Contributing
If you'd like to improve this project, feel free to fork the repository, make your changes, and submit a pull request.

**Author**: Vianney Diaz  
**Date**: November 2025
