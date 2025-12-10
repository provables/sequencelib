/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A304041 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A304041, offset := 0, maxIndex := 9, derive := true]
def A304041 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (1 - loop (λ (x y) ↦ y - ((x * x) / 4)) x 0) + x) 2 x

end Sequence