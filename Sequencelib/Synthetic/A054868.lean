/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A054868 sequence 
-/


namespace Sequence

@[OEIS := A054868, offset := 0, derive := true, maxIndex := 100]
def A054868 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ loop2 (λ (x y : ℤ) ↦ 1 + (x - y)) (λ (_x y : ℤ) ↦ y / 2) x x x) 2 x

end Sequence

