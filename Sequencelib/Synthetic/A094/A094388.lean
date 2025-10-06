/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A094388 sequence
-/

namespace Sequence

@[OEIS := A094388, offset := 0, maxIndex := 26, derive := true]
def A094388 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + loop2 (λ (_x y) ↦ y) (λ (_x y) ↦ (y + y) + y) x 0 1

end Sequence