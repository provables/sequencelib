/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A114620 sequence 
-/


namespace Sequence

@[OEIS := A114620, offset := 0, derive := true, maxIndex := 21]
def A114620 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ 1 + ((y - x) - x)) (λ (x _y : ℤ) ↦ x) (x + x) 1 0 / 2)

end Sequence

