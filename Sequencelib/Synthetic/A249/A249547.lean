/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A249547 sequence
-/

namespace Sequence

@[OEIS := A249547, offset := 0, maxIndex := 49, derive := true]
def A249547 (x : ℕ) : ℕ :=
  Int.toNat <| (x * x) + loop (λ (x y) ↦ (y / 2) + x) x x

end Sequence