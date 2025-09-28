/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A164965 sequence 
-/


namespace Sequence

@[OEIS := A164965, offset := 0, derive := true, maxIndex := 84]
def A164965 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + loop2 (λ (_x y : ℤ) ↦ y) (λ (x y : ℤ) ↦ y - x) x 0 1)

end Sequence

