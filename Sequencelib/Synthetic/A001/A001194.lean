/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001194 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A001194, offset := 2, maxIndex := 19, derive := true]
def A001194 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x y) ↦ (2 * (x * y)) - x) x (loop (λ (x y) ↦ (1 + y) + x) x 1) * 3

end Sequence