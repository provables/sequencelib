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
# A191012 sequence 
-/


namespace Sequence

@[OEIS := A191012, offset := 0, derive := true, maxIndex := 30]
def A191012 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ y - (x * y)) (λ (_x y : ℤ) ↦ y) (3 * 2) 1 x

end Sequence

