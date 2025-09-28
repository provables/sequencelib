/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A108261 sequence 
-/


namespace Sequence

@[OEIS := A108261, offset := 0, derive := true, maxIndex := 50]
def A108261 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop2 (λ (_x y : ℤ) ↦ y) (λ (x y : ℤ) ↦ (x + y) + y) (x + x) 2 1 / 2) + 1)

end Sequence

