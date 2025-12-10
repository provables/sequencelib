/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A066140 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A066140, offset := 5, maxIndex := 12, derive := true]
def A066140 (n : ℕ) : ℕ :=
  let x := n - 5
  Int.toNat <| (((((loop (λ (x y) ↦ ((y * y) / (1 + x)) + x) x 1 * (1 + x)) + x) / 2) + 2) + x) + (1 + x)

end Sequence