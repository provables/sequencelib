/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta
import GenSeq

open Synth

/-!
# A164303 sequence 
-/


namespace Sequence

@[OEIS := A164303, offset := 0, derive := true, maxIndex := 100]
def A164303 (x : ℕ) : ℕ :=
  Int.toNat <| (2 + loop2 (λ (x y : ℤ) ↦ (2 * (2 + x)) + y) (λ (x _y : ℤ) ↦ x) x 1 3)

end Sequence

