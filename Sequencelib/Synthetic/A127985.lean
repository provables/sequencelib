/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A127985 sequence 
-/


namespace Sequence

@[OEIS := A127985, offset := 0, derive := true, maxIndex := 30]
def A127985 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y : ℤ) ↦ loop (λ (x _y : ℤ) ↦ 1 + (x + x)) y y - x) x 0 / 2)

end Sequence

