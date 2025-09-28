/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A216147 sequence 
-/


namespace Sequence

@[OEIS := A216147, offset := 0, derive := true, maxIndex := 20]
def A216147 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + loop2 (λ (x y : ℤ) ↦ x * y) (λ (_x y : ℤ) ↦ y) x 2 x)

end Sequence

