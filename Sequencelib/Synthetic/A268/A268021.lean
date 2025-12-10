/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A268021 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A268021, offset := 1, maxIndex := 15, derive := true]
def A268021 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ (_x y) ↦ y) (λ (x y) ↦ ((x * y) - x) - y) x 1 1

end Sequence