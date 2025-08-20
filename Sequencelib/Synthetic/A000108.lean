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
# A000108 sequence 
-/


namespace Sequence

@[OEIS := A000108, offset := 0, derive := true, maxIndex := 31]
def A000108 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y : ℤ) ↦ 2 * ((x - (x / y)) + x)) x 1 / (1 + x))

end Sequence

