/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001550 sequence 
-/


namespace Sequence

@[OEIS := A001550, offset := 0, derive := true, maxIndex := 100]
def A001550 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + loop2 (λ (x y : ℤ) ↦ (x + x) + y) (λ (_x y : ℤ) ↦ (y + y) + y) x 2 1)

end Sequence

