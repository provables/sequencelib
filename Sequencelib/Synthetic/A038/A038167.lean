/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A038167 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A038167, offset := 0, maxIndex := 55, derive := true]
def A038167 (x : ℕ) : ℕ :=
  Int.toNat <| ((if (x % (1 + 4)) ≤ 0 then 0 else 1 % 2) + loop (λ (x y) ↦ (1 + x) + y) (x / 2) x) - x

end Sequence