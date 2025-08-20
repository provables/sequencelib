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
# A052646 sequence 
-/


namespace Sequence

@[OEIS := A052646, offset := 0, derive := true, maxIndex := 18]
def A052646 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ x * y) x (loop2 (λ (x y : ℤ) ↦ 1 + (x + y)) (λ (x _y : ℤ) ↦ x) x 1 0)

end Sequence

