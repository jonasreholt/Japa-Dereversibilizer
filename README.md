# Japa Dereversibilizer

Reversible programming is an unconventional paradigm that
offers new ways to construct software. When programs have inherent
inverse counterparts, such as compression/decompression, invertibility of
reversible implementations enables a ‘write once, verify once’ approach.
The nature of today’s computers is, however, irreversible.
This work-in-progress contribution explores the dereversibilization of re-
versible source programs into irreversible target programs. As a first
step into this space we explore the use of state-of-the-art Satisfiability-
Modulo-Theories (SMT) solvers to remove redundant assertions. We di-
vide the problem space into two parts: High-level dereversibilization of
Janus-like source programs and classical compilation to machine code.
We focus in this contribution on the semantic-preserving removal of as-
sertion from reversible control-flow statements. Our prototype reduces
the size of the assembly code and marks the first step towards automatic
dereversibilization and new opportunities of using reversible programs.

# How to run the code
## Prerequisites
- See `janus-like.cabal`.
- An installation of z3 (https://github.com/Z3Prover/z3).
  - Note that the version chosen must be compatible with the z3 bindings.
    We have tested Z3 binding version 408.3 together with z3 version 4.8.12.
- The haskell z3 bindings (https://hackage.haskell.org/package/z3).

# Building executeable
When all prerequisites are met, simply call `make build`.


# Contributions

This project has led to the following contribution to the litteratue:
- The work in progress paper "..." for the conference *Reversible Computations 2023*.
