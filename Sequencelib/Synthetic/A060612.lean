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
# A060612 sequence 
-/


namespace Sequence

@[OEIS := A060612, offset := 5, derive := true, maxIndex := 4]
def A060612 (n : ℕ) : ℕ :=
  let x := n - 5
  Int.toNat <| loop (λ (x _y : ℤ) ↦ loop (λ (_x y : ℤ) ↦ 2 * (2 * ((2 + y) * y))) x 1) x 0

end Sequence

