/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A066068 sequence 
-/


namespace Sequence

@[OEIS := A066068, offset := 0, derive := true, maxIndex := 100]
def A066068 (x : ℕ) : ℕ :=
  Int.toNat <| (x + loop2 (λ (x y : ℤ) ↦ x * y) (λ (_x y : ℤ) ↦ y) x 1 x)

end Sequence

