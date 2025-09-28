/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A105280 sequence 
-/


namespace Sequence

@[OEIS := A105280, offset := 0, derive := true, maxIndex := 100]
def A105280 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ (1 + x) * loop (λ (x _y : ℤ) ↦ 1 + (x + x)) 2 2) x 0

end Sequence

