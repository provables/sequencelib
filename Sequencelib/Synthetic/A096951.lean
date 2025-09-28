/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A096951 sequence 
-/


namespace Sequence

@[OEIS := A096951, offset := 0, derive := true, maxIndex := 21]
def A096951 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ ((x + y) + y) + y) (λ (x _y : ℤ) ↦ x + x) (x + x) 1 0

end Sequence

