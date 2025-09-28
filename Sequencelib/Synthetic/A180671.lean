/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A180671 sequence 
-/


namespace Sequence

@[OEIS := A180671, offset := 0, derive := true, maxIndex := 10]
def A180671 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop2 (λ (x y : ℤ) ↦ 1 + (x + y)) (λ (x _y : ℤ) ↦ x) y 2 1 + x) x x

end Sequence

