# D Flip-Flop using Verilog HDL

## Overview

This project implements a positive-edge triggered D (Data) Flip-Flop using Verilog HDL. The D Flip-Flop is one of the fundamental sequential logic circuits used for storing one bit of data. The output (`Q`) updates only on the rising edge of the clock and follows the input (`D`). The complement output (`Q̅`) is generated using a continuous assignment statement. The design was verified using a Verilog testbench and simulated using Icarus Verilog, with waveforms analyzed in GTKWave.

---

## Objective

The objective of this project is to design, simulate, and verify a synchronous D Flip-Flop using Verilog HDL and understand the behavior of sequential circuits.

---

## Features

- Positive-edge triggered D Flip-Flop
- Behavioral modeling using Verilog HDL
- Complement output (`Q̅`)
- Verilog testbench for functional verification
- Waveform generation using GTKWave
- Simulation using Icarus Verilog

---

## Inputs and Outputs

| Signal | Width | Description |
|---------|------|-------------|
| clk | 1-bit | Clock input |
| d | 1-bit | Data input |
| q | 1-bit | Flip-Flop output |
| q_b | 1-bit | Complement of output (`Q̅`) |

---

## Working Principle

The D Flip-Flop captures the value of the input (`D`) only on the positive edge of the clock.

- When the rising edge of the clock occurs, the output `Q` takes the current value of `D`.
- If `D = 0`, then `Q = 0`.
- If `D = 1`, then `Q = 1`.
- The complement output `Q̅` is always the inverse of `Q`.

---

## Truth Table

| Clock Edge | D | Q(next) | Q̅(next) |
|:----------:|:-:|:-------:|:---------:|
| ↑ | 0 | 0 | 1 |
| ↑ | 1 | 1 | 0 |

---

## Project Structure

```
D-Flip-Flop/
│── d_flipflop.v
│── d_ff_tb.v
│── d_ff.vcd
│── waveform.png
└── README.md
```

---

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Visual Studio Code

---

## Simulation Steps

### Compile

```bash
iverilog -o d_ff_sim d_flipflop.v d_ff_tb.v
```

### Run

```bash
vvp d_ff_sim
```

### View Waveform

```bash
gtkwave d_ff.vcd
```

---

## Expected Output

The simulation verifies that:

- The output `Q` follows the input `D` only on the positive edge of the clock.
- The complement output `Q̅` always remains the inverse of `Q`.
- The waveform confirms the correct operation of the D Flip-Flop under different input conditions.

---

## Applications

- Data Storage Registers
- Shift Registers
- Counters
- Memory Elements
- Finite State Machines (FSM)
- Digital Sequential Circuits

---

## Learning Outcomes

Through this project, I learned:

- Sequential logic design using Verilog HDL.
- Positive-edge triggered clock behavior.
- Behavioral modeling of flip-flops.
- Continuous assignment using `assign`.
- Testbench development for verification.
- Functional simulation using Icarus Verilog.
- Waveform analysis using GTKWave.

---

## Author

**Chakkati Kiran Kumari**

GitHub: https://github.com/KIRAN038
