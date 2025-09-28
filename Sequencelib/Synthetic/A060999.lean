/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A060999 sequence 
-/


namespace Sequence

@[OEIS := A060999, offset := 0, derive := true, maxIndex := 100]
def A060999 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ (((y * y) / 3) + x) + y) (x - 1) x

end Sequence

