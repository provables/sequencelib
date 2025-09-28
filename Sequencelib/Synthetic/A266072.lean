/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A266072 sequence 
-/


namespace Sequence

@[OEIS := A266072, offset := 0, derive := true, maxIndex := 72]
def A266072 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 - loop (λ (x _y : ℤ) ↦ 2 - x) x x) + x)

end Sequence

