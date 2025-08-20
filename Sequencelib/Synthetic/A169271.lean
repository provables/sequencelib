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
# A169271 sequence 
-/


namespace Sequence

@[OEIS := A169271, offset := 0, derive := true, maxIndex := 17]
def A169271 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (loop (λ (x _y : ℤ) ↦ x * x) 2 2 + y) * x) (λ (_x _y : ℤ) ↦ 1) x 1 2

end Sequence

