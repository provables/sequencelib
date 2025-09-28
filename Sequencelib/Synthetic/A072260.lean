/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A072260 sequence 
-/


namespace Sequence

@[OEIS := A072260, offset := 0, derive := true, maxIndex := 100]
def A072260 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ 1 + (2 * (x + x))) x (2 + ((2 + x) * 2))

end Sequence

