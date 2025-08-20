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
# A225367 sequence 
-/


namespace Sequence

@[OEIS := A225367, offset := 1, derive := true, maxIndex := 100]
def A225367 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (_x y : ℤ) ↦ loop (λ (x _y : ℤ) ↦ (x + x) + x) (y / 2) 2) x 3

end Sequence

