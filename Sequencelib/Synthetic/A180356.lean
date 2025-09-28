/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A180356 sequence 
-/


namespace Sequence

@[OEIS := A180356, offset := 0, derive := true, maxIndex := 27]
def A180356 (x : ℕ) : ℕ :=
  Int.toNat <| ((2 + ((x * loop (λ (x _y : ℤ) ↦ x * x) 2 x) + 4)) * x)

end Sequence

