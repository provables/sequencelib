/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A067420 sequence 
-/


namespace Sequence

@[OEIS := A067420, offset := 0, derive := true, maxIndex := 100]
def A067420 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ ((((2 + (2 % x)) * x) * 2) * 2) - x) x 1

end Sequence

