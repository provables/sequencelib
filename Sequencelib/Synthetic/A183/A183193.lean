/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A183193 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A183193, offset := 4, maxIndex := 10, derive := true]
def A183193 (n : ℕ) : ℕ :=
  let x := n - 4
  Int.toNat <| 1 + loop (λ (_x y) ↦ y) (x / 2) (1 + (x + x))

end Sequence