/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A004952 sequence 
-/


namespace Sequence

@[OEIS := A004952, offset := 0, derive := true, maxIndex := 28]
def A004952 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ x + y) (λ (x _y : ℤ) ↦ x) (loop (λ (x _y : ℤ) ↦ x * x) 2 2) 1 2 * x)

end Sequence

