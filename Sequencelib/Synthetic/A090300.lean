/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A090300 sequence 
-/


namespace Sequence

@[OEIS := A090300, offset := 0, derive := true, maxIndex := 50]
def A090300 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y : ℤ) ↦ y) (λ (x y : ℤ) ↦ (x + y) + y) ((x + x) + x) 2 2

end Sequence

