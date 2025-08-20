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
# A089626 sequence 
-/


namespace Sequence

@[OEIS := A089626, offset := 1, derive := true, maxIndex := 7]
def A089626 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ (2 * (x * y)) + x) y x) (x + x) 1

end Sequence

