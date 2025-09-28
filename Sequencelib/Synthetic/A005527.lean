/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A005527 sequence 
-/


namespace Sequence

@[OEIS := A005527, offset := 0, derive := true, maxIndex := 12]
def A005527 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y : ℤ) ↦ 2 + (y - (((x / 2) / 2) / 2))) x 1 + 2)

end Sequence

