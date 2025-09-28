/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A101362 sequence 
-/


namespace Sequence

@[OEIS := A101362, offset := 0, derive := true, maxIndex := 100]
def A101362 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + x) * loop (λ (x _y : ℤ) ↦ x * x) 2 x)

end Sequence

