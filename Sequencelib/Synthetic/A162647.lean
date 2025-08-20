/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta
import GenSeq

open Synth

/-!
# A162647 sequence 
-/


namespace Sequence

@[OEIS := A162647, offset := 0, derive := true, maxIndex := 9]
def A162647 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ (x * y) + y) (λ (_x y : ℤ) ↦ (2 + y) * y) x 1 1 + 1)

end Sequence

