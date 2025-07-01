---
usemathjax: true
---

# Contributing

We welcome contributions of new sequences, new values for existing sequences, and
theorems about them. 

## Guidelines

* Fork or clone this repository in [Github](https://github.com/provables/sequencelib). It is a 
  standard Lake project, so the general instructions for 
  [Setting Up Lean](https://lean-lang.org/documentation/setup/) apply.

* [Optional] If you want a more complete environment that can also render the website, you can
  use [Nix](https://nixos.org/) and start a fully provisioned environment with `nix develop` at the
  root level of this repository. Once in the environment, run `task -a` to list all the available
  actions.

* If you are adding a **new sequence**, please: 
  1. Add the copyright statement as a Lean comment at the top of the file and include all authors.  For example:

     ```
     /-
     Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
     Released under CC BY-SA 4.0 license as described in the file LICENSE.
     Authors: Walter Moreira, Joe Stubbs
     -/
     ```

  2. Ensure you add the definition in the `Sequence` namespace. Tag the definition with the attribute `@[OEIS := ANNNNNN, offset := N]`, following the values given by [OEIS](https://oeis.org). For example:

     ```lean4
     namespace Sequence

     @[OEIS := A000108, offset := 0]
     def Catalan (n : ℕ) : ℕ := sorry
     ```

     Note that you will need to add `import Sequencelib.Meta` for this step. Ideally, sequences with
     the same OEIS tag should go in the same file, containing proofs that the definitions coincide.
     For sequences with a new tag, please, create a new file and add the import to `Sequencelib.lean`
     at root level.

* For adding proofs of new values, please, add theorems of the form:

  ```lean4
  def Catalan_three : Catalan 3 = 5 := by sorry
  ```

  For proving that two definitions of a sequence coincide, please, add a theorem of the form:

  ```lean4
  def Seq1_eq_Seq2 : Seq1 = Seq2 := by sorry
  ```

* Additionally, we strive to follow 
  Mathlib guidelines, for [naming](https://leanprover-community.github.io/contribute/naming.html) 
  and [style](https://leanprover-community.github.io/contribute/style.html).
  We do, however, welcome deviations and we accept proofs about the sequences even
  if they are not in the most general form required by Mathlib.
    
* Before submitting a PR, please: 
  1. ensure that `lake build` and `lake lint` both succeed (or, alternatively, `task lint` if you 
     are in the Nix environment),
  2. if you added a new sequence in a new file, ensure the imports in `Sequencelib.lean` are 
     up-to-date and sorted (if you are in the Nix environment, run `task sort-root`).