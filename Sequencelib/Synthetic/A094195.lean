/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A094195 sequence
-/

namespace Sequence

@[OEIS := A094195, offset := 0, maxIndex := 100, derive := true]
def A094195 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + loop (λ (x y) ↦ ((2 * (x + x)) + x) + y) x 0) + x

end Sequence