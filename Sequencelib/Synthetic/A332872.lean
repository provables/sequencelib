/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A332872 sequence 
-/


namespace Sequence

@[OEIS := A332872, offset := 0, derive := true, maxIndex := 10]
def A332872 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + loop2 (λ (x y : ℤ) ↦ 2 * ((x - y) + x)) (λ (x _y : ℤ) ↦ x) x 1 1) / 2)

end Sequence

