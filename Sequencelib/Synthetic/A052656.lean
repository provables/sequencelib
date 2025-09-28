/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A052656 sequence 
-/


namespace Sequence

@[OEIS := A052656, offset := 0, derive := true, maxIndex := 18]
def A052656 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y : ℤ) ↦ 2 * (x * y)) x (loop (λ (_x _y : ℤ) ↦ 1) (x - 2) x) / 2)

end Sequence

