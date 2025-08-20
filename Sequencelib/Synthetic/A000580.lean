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
# A000580 sequence 
-/


namespace Sequence

@[OEIS := A000580, offset := 7, derive := true, maxIndex := 100]
def A000580 (n : ℕ) : ℕ :=
  let x := n - 7
  Int.toNat <| loop (λ (x y : ℤ) ↦ (((2 * ((x + x) + x)) + x) / y) + x) x 1

end Sequence

