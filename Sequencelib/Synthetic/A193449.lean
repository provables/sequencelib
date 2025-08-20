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
# A193449 sequence 
-/


namespace Sequence

@[OEIS := A193449, offset := 0, derive := true, maxIndex := 100]
def A193449 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (x + y) + y) (λ (x _y : ℤ) ↦ x) x x 0

end Sequence

