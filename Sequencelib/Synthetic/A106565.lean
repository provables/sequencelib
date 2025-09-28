/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A106565 sequence 
-/


namespace Sequence

@[OEIS := A106565, offset := 0, derive := true, maxIndex := 100]
def A106565 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (1 + 4) * (x + y)) (λ (x _y : ℤ) ↦ x) x 0 1

end Sequence

