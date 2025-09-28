/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A154626 sequence 
-/


namespace Sequence

@[OEIS := A154626, offset := 0, derive := true, maxIndex := 100]
def A154626 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ 2 * ((2 * (x - y)) + x)) (λ (x _y : ℤ) ↦ x) x 1 1

end Sequence

