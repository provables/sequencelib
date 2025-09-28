/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A022108 sequence 
-/


namespace Sequence

@[OEIS := A022108, offset := 0, derive := true, maxIndex := 31]
def A022108 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y : ℤ) ↦ loop (λ (x _y : ℤ) ↦ x * x) 2 2 + y) (λ (x y : ℤ) ↦ x + y) x 1 2

end Sequence

