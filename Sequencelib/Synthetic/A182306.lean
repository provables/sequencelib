/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A182306 sequence 
-/


namespace Sequence

@[OEIS := A182306, offset := 0, derive := true, maxIndex := 100]
def A182306 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ (x / (1 + 4)) + x) x (1 + 4)

end Sequence

