/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A154262 sequence 
-/


namespace Sequence

@[OEIS := A154262, offset := 0, derive := true, maxIndex := 100]
def A154262 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop (λ (x _y : ℤ) ↦ (x + x) + x) 2 x - 1) * (x - 1)) + 2)

end Sequence

