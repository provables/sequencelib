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
# A022352 sequence 
-/


namespace Sequence

@[OEIS := A022352, offset := 0, derive := true, maxIndex := 100]
def A022352 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ (x + x) + x) 2 (loop2 (λ (x y : ℤ) ↦ x + y) (λ (x _y : ℤ) ↦ x) x 0 2)

end Sequence

