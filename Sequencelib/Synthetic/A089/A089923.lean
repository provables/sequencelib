/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A089923 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A089923, offset := 5, maxIndex := 8, derive := true]
def A089923 (n : ℕ) : ℤ :=
  let x := n - 5
  (((loop (λ (x y) ↦ loop (λ (x y) ↦ x + (y * y)) y x) x 1 * (((x * 2) + x) * 2)) + 1) + 2) + 2

end Sequence