/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A159966 sequence 
-/


namespace Sequence

@[OEIS := A159966, offset := 0, derive := true, maxIndex := 100]
def A159966 (x : ℕ) : ℕ :=
  Int.toNat <| (x + loop2 (λ (_x y : ℤ) ↦ y) (λ (x _y : ℤ) ↦ -x) x 0 2)

end Sequence

