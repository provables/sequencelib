/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A102847 sequence 
-/


namespace Sequence

@[OEIS := A102847, offset := 0, derive := true, maxIndex := 9]
def A102847 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ 2 + (x * x)) x 1

end Sequence

