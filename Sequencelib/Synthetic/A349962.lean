/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A349962 sequence 
-/


namespace Sequence

@[OEIS := A349962, offset := 0, derive := true, maxIndex := 10]
def A349962 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop2 (λ (x y : ℤ) ↦ 2 * (x * y)) (λ (_x y : ℤ) ↦ y) y 1 y + x) x 1

end Sequence

