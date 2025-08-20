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
# A210448 sequence 
-/


namespace Sequence

@[OEIS := A210448, offset := 0, derive := true, maxIndex := 29]
def A210448 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ 3 * (x + y)) (λ (_x y : ℤ) ↦ y + y) x 0 1

end Sequence

