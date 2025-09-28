/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A070875 sequence 
-/


namespace Sequence

@[OEIS := A070875, offset := 0, derive := true, maxIndex := 100]
def A070875 (x : ℕ) : ℕ :=
  Int.toNat <| (2 + loop2 (λ (_x y : ℤ) ↦ 2 + y) (λ (x _y : ℤ) ↦ x + x) x 3 3)

end Sequence

