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
# A105734 sequence 
-/


namespace Sequence

@[OEIS := A105734, offset := 1, derive := true, maxIndex := 22]
def A105734 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ 1 + (x / y)) (λ (x _y : ℤ) ↦ x) x 1 2

end Sequence

