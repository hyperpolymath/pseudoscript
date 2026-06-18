# SPDX-License-Identifier: MPL-2.0
# SPDX-FileCopyrightText: 2024-2026 Jonathan D.A. Jewell (hyperpolymath)
# justfile — PseudoScript task runner

default:
    @just --list

# Type-check a file
check FILE:
    affinescript check --face pseudo {{FILE}}

# Evaluate a file with the interpreter
run FILE:
    affinescript eval --face pseudo {{FILE}}

# Compile to typed-wasm
build FILE OUT="out.wasm":
    affinescript compile --face pseudo {{FILE}} -o {{OUT}}

# Show the canonical lowering of a file (debug)
preview FILE:
    affinescript preview-pseudocode {{FILE}}

# Lint a file
lint FILE:
    affinescript lint --face pseudo {{FILE}}

# Smoke-test the hello example
hello: (run "examples/hello.affine")
