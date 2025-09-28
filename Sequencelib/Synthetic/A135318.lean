/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A135318 sequence 
-/


namespace Sequence

@[OEIS := A135318, offset := 0, derive := true, maxIndex := 100]
def A135318 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + loop2 (λ (x y : ℤ) ↦ x + y) (λ (x y : ℤ) ↦ x - y) x 2 1) / 3)

end Sequence

