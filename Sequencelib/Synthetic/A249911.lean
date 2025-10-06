/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A249911 sequence
-/

namespace Sequence

@[OEIS := A249911, offset := 0, maxIndex := 40, derive := true]
def A249911 (x : ℕ) : ℕ :=
  Int.toNat <| ((2 + loop (λ (x y) ↦ (x * x) + y) 2 2) * ((x - 1) * x)) + x

end Sequence