/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A081714 sequence 
-/


namespace Sequence

@[OEIS := A081714, offset := 0, derive := true, maxIndex := 10]
def A081714 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop2 (λ (x y : ℤ) ↦ y - x) (λ (x _y : ℤ) ↦ x) (y + y) 2 1 - x) x 0

end Sequence

