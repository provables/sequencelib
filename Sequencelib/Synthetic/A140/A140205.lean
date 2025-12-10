/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A140205 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A140205, offset := 0, maxIndex := 71, derive := true]
def A140205 (x : ℕ) : ℕ :=
  Int.toNat <| (((((((loop (λ (x y) ↦ (y % (2 * 4)) + x) x 0 * 2) + 1) + x) / 2) / 2) + 1) + x) / 2

end Sequence