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
# A204421 sequence 
-/


namespace Sequence

@[OEIS := A204421, offset := 1, derive := true, maxIndex := 99]
def A204421 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ x + y) x y / x) x 1 % 3)

end Sequence

