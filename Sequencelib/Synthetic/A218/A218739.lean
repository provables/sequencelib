/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A218739 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A218739, offset := 0, maxIndex := 100, derive := true]
def A218739 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ 1 + loop (λ (x _y) ↦ 2 * ((x + x) + x)) 2 x) x 0

end Sequence