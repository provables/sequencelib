/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A215409 sequence 
-/


namespace Sequence

@[OEIS := A215409, offset := 0, derive := true, maxIndex := 6]
def A215409 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + (2 - comprN (λ (_x : ℤ) ↦ 0) (x - 2)))

end Sequence

