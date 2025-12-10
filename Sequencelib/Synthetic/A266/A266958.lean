/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A266958 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A266958, offset := 1, maxIndex := 50, derive := true]
def A266958 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ (x y) ↦ ((2 + ((y % 2) + 2)) * y) + x) x 1 - 2

end Sequence