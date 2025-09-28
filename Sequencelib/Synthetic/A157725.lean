/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A157725 sequence 
-/


namespace Sequence

@[OEIS := A157725, offset := 0, derive := true, maxIndex := 100]
def A157725 (x : ℕ) : ℕ :=
  Int.toNat <| (2 + loop2 (λ (x y : ℤ) ↦ x + y) (λ (x _y : ℤ) ↦ x) x 0 1)

end Sequence

