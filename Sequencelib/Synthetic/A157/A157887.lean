/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A157887 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A157887, offset := 0, maxIndex := 9, derive := true]
def A157887 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y) ↦ (x % y) + y) (1 + x) 0 + 2) + x) / 3

end Sequence