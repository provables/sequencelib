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
# A013805 sequence 
-/


namespace Sequence

@[OEIS := A013805, offset := 0, derive := true, maxIndex := 9]
def A013805 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ x + x) (loop (λ (x y : ℤ) ↦ 2 * ((x + x) + y)) 2 x) 1

end Sequence

