# 📘 Semi-Sparsity for Smoothing Filters — Complete Paper Reimplementation

## 🔍 Overview

This repository contains a **complete reimplementation and validation** of the research paper:

> **“Semi-Sparsity for Smoothing Filters”**  
> (IEEE Transactions on Image Processing)

The goal of this project is to:
- Understand the theory of **semi-sparsity**
- Reimplement the **core optimization framework**
- Validate the **key claims of the paper**
- Compare with classical **L₀ gradient minimization**
- Demonstrate **multiple applications** of the method

---

## 📂 Repository Structure

```
.
├── strip_gt.png
├── strip_noise.png
│
├── run_semi_sparsity.m        # Main semi-sparsity implementation
├── run_l0_gradient.m          # L₀ gradient baseline
├── compare_l0_vs_semi.m       # Visual comparison script
├── verify_semi_sparsity.m     # Statistical sparsity verification
├── run_abstraction.m          # Image abstraction application
│
├── test_hq_sp.m               # Initial / demo-level implementation
│
├── output/
│   ├── strip_semi_sparsity_gt.png
│   ├── strip_semi_sparsity_noise.png
│   ├── strip_semi_sparsity_res.png
│   ├── strip_l0_gradient_res.png
│   ├── comparison_l0_vs_semi.png
│   ├── sparsity_visualization.png
│   ├── strip_semi_sparsity_abstraction.png
│   └── strip_semi_sparsity_err_plot.png
│
├── output(demo_implementation)/
│   ├── strip_semi_sparsity_gt.png
│   ├── strip_semi_sparsity_noise.png
│   ├── strip_semi_sparsity_res.png
│   └── strip_semi_sparsity_err_plot.png
│
└── LICENSE
```

---

## 🧠 Key Concepts Implemented

- **Semi-Sparsity Prior**
  - Enforces sparsity on **higher-order gradients**
  - Allows smooth polynomial surfaces to be preserved
- **Higher-order L₀ Regularization**
- **Half Quadratic Splitting (HQS) Optimization**
- **FFT-based Closed-form Solver**
- **Staircase Artifact Removal**
- **Statistical Validation of Sparsity**
- **Multiple Applications (Denoising & Abstraction)**

---

## 🧪 Input Images

| File | Description |
|----|----|
| `strip_gt.png` | Clean / Ground Truth image (used only for evaluation) |
| `strip_noise.png` | Noisy input image (given to the algorithm) |

> ⚠️ Ground truth is **never** used as input to the algorithm.

---

## ▶️ Running the tests

### 1️⃣ Semi-Sparsity Smoothing (Main Method)

```matlab
run_semi_sparsity
```

Generates:
- `strip_semi_sparsity_res.png`
- `strip_semi_sparsity_err_plot.png`

---

### 2️⃣ L₀ Gradient Baseline

```matlab
run_l0_gradient
```

Generates:
- `strip_l0_gradient_res.png`

---

### 3️⃣ Visual Comparison (Staircase vs Smooth)

```matlab
compare_l0_vs_semi
```

Generates:
- `comparison_l0_vs_semi.png`

---

### 4️⃣ Statistical Verification of Semi-Sparsity

```matlab
verify_semi_sparsity
```

Outputs:
- Numerical sparsity percentages
- `sparsity_visualization.png`

Example result:
```
1st-order sparsity  = 82.89 %
2nd-order sparsity  = 98.26 %
```

This **numerically validates the central theoretical claim of the paper**.

---

### 5️⃣ Image Abstraction Application

```matlab
run_abstraction
```

Generates:
- `strip_semi_sparsity_abstraction.png`

Demonstrates that the same model can be used beyond denoising.

---

## 🧾 Demo vs Full Implementation

### 🔹 `test_hq_sp.m`
- Initial **demo-level** implementation
- Minimal code to validate the basic idea
- Outputs saved in `output(demo_implementation)/`

### 🔹 Full implementation (recommended)
- Modular scripts
- Baseline comparison
- Statistical validation
- Multiple applications
- Outputs saved in `output/`

---

## 📜 License

This project is released under the **MIT License**.