/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A036781 sequence
-/

namespace Sequence

@[OEIS := A036781, offset := 0, maxIndex := 100, derive := true]
def A036781 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + loop (λ (x y) ↦ loop (λ (x y) ↦ x * y) y 1 + x) x x

end Sequence