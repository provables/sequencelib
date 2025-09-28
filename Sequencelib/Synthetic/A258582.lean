/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A258582 sequence 
-/


namespace Sequence

@[OEIS := A258582, offset := 0, derive := true, maxIndex := 41]
def A258582 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ (y * y) + x) (x + x) 0

end Sequence

