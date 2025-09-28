/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A051871 sequence 
-/


namespace Sequence

@[OEIS := A051871, offset := 0, derive := true, maxIndex := 100]
def A051871 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop (λ (x _y : ℤ) ↦ (x - 1) + x) 4 x + x) * x) / 2)

end Sequence

