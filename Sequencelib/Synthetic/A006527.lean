/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A006527 sequence 
-/


namespace Sequence

@[OEIS := A006527, offset := 0, derive := true, maxIndex := 46]
def A006527 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ ((y * y) - y) + x) x x

end Sequence

