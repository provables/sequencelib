/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A350327 sequence
-/

namespace Sequence

@[OEIS := A350327, offset := 3, maxIndex := 50, derive := true]
def A350327 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| (((1 + loop (λ (_x y) ↦ y) (x / (1 + 4)) 1) + x) / 3) + 1

end Sequence