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
# A173434 sequence 
-/


namespace Sequence

@[OEIS := A173434, offset := 1, derive := true, maxIndex := 36]
def A173434 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((x % 2) - 1) + loop2 (λ (x y : ℤ) ↦ x + y) (λ (x _y : ℤ) ↦ x) x 1 0) / 2)

end Sequence

