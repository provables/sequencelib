/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A108354 sequence 
-/


namespace Sequence

@[OEIS := A108354, offset := 0, derive := true, maxIndex := 85]
def A108354 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + ((x / 2) / 2)) * loop2 (λ (_x y : ℤ) ↦ 2 - y) (λ (x _y : ℤ) ↦ x) x 1 0)

end Sequence

