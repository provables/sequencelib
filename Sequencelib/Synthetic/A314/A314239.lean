/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A314239 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A314239, offset := 0, maxIndex := 49, derive := true]
def A314239 (x : ℕ) : ℕ :=
  Int.toNat <| ((((((((((loop (λ (x y) ↦ (y - (x / (1 + 4))) / 2) x 1 + x) + x) + x) + x) * 2) + 1) + x) + x) / 3) + x) + x

end Sequence