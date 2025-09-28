/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A277509 sequence 
-/


namespace Sequence

@[OEIS := A277509, offset := 0, derive := true, maxIndex := 10]
def A277509 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop2 (λ (x y : ℤ) ↦ x * y) (λ (_x y : ℤ) ↦ y) y 1 y - x * y) x 1

end Sequence

