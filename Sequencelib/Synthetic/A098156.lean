/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A098156 sequence 
-/


namespace Sequence

@[OEIS := A098156, offset := 0, derive := true, maxIndex := 100]
def A098156 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + loop2 (λ (x y : ℤ) ↦ (x + x) + y) (λ (x y : ℤ) ↦ y / x) x 1 x) / 2)

end Sequence

