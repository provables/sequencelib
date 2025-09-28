/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A132753 sequence 
-/


namespace Sequence

@[OEIS := A132753, offset := 0, derive := true, maxIndex := 100]
def A132753 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + (loop (λ (x _y : ℤ) ↦ x + x) x 2 - x))

end Sequence

