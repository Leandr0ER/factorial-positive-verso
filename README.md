# factorial-positive-verso

This project is a Lean 4 formalization of the positivity of the factorial function, built using the [Verso Blueprint project template](https://github.com/leanprover/verso-blueprint/tree/v4.30.0/project_template).

## Project Overview

The goal of this project is to formalize the definition of the factorial function ($n!$) and prove that its value is strictly positive for all natural numbers. It uses **Verso Blueprint** to generate an interactive mathematical document with dependency graphs and proof tracking.

## Structure

- `FactorialPositiveVerso/`: Core Lean source code and blueprint chapters.
- `FactorialPositiveVersoMain.lean`: Entry point for generating the interactive web site.
- `scripts/ci-pages.sh`: Local script for building the project and rendering the blueprint.

## Getting Started

To explore the project locally, you need to have Lean 4 installed.

### Commands

1. **Initialize/Update Dependencies:**
   ```bash
   lake update
   ```

2. **Build and Render Blueprint:**
   ```bash
   ./scripts/ci-pages.sh
   ```

The rendered blueprint will be available in `_out/site/html-multi/index.html`.
