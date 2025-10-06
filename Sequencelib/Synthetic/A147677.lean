/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A147677 sequence
-/

namespace Sequence

@[OEIS := A147677, offset := 1, maxIndex := 69, derive := true]
def A147677 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((1 + loop (λ (x y) ↦ (1 + y) - x) x 4) + x) + 2

end Sequence