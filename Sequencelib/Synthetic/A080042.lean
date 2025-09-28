/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A080042 sequence 
-/


namespace Sequence

@[OEIS := A080042, offset := 0, derive := true, maxIndex := 100]
def A080042 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (_x y : ℤ) ↦ y) (λ (x y : ℤ) ↦ (2 * ((x + y) + y)) + x) x 1 2 * 2)

end Sequence

