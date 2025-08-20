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
# A056771 sequence 
-/


namespace Sequence

@[OEIS := A056771, offset := 0, derive := true, maxIndex := 10]
def A056771 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (y - x) - x) (λ (x _y : ℤ) ↦ x) (2 * (x + x)) 1 1

end Sequence

