# CLOCK-DIVIDER-by-n

# ⏳ Clock Divider by N (Verilog)

This project implements a **parameterizable clock divider** in Verilog. The module takes a high-frequency input clock (`clk`) and divides it by an arbitrary value `n`, producing a slower clock output (`n_clk`).

---

## 📦 Module: `clock_divider_by_n`

### 🔁 Description

The `clock_divider_by_n` module toggles the output clock `n_clk` every `n` cycles of the input `clk`. This effectively divides the frequency of `clk` by **2n** (since it toggles every `n` cycles, full period = 2n).

---

## 🧠 Functional Overview

| Signal  | Direction | Description                            |
|---------|-----------|----------------------------------------|
| `clk`   | Input     | Fast input clock                       |
| `n`     | Input     | Divider value (e.g., 7 means clk/14)   |
| `n_clk` | Output    | Divided (slower) clock                 |

### 📋 Formula:
- Output frequency = **Input frequency ÷ (2 × n)**  
- Pulse toggles every `n` cycles → 1 full period = 2 × `n` input cycles

---

## 🔬 Testbench: `tb_clock_divider_by_n.v`

This testbench:
- Applies a square wave to `clk`
- Sets `n = 7` (so `n_clk` toggles every 7 clock cycles)
- Prints signal transitions using `$monitor`

---

## 📝 Example Output

With `n = 7` and a `clk` toggling every 10 ns:

```text
Time    clk n_clk
0       0   0
5       1   0
...
135     1   1   // n_clk toggled after 7 clock cycles
275     1   0   // toggled again after next 7 cycles
