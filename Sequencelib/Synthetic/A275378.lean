/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A275378 sequence 
-/


namespace Sequence

@[OEIS := A275378, offset := 0, derive := true, maxIndex := 9]
def A275378 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (_x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ x + y) (y / 3) 2) (x - 2) 1

end Sequence

