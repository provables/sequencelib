/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A329684 sequence 
-/


namespace Sequence

@[OEIS := A329684, offset := 0, derive := true, maxIndex := 71]
def A329684 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y : ℤ) ↦ y) (λ (_x _y : ℤ) ↦ 1) (x - 1) 1 2

end Sequence

