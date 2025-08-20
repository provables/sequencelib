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
# A082291 sequence 
-/


namespace Sequence

@[OEIS := A082291, offset := 1, derive := true, maxIndex := 20]
def A082291 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ 2 + ((x + x) + y)) (λ (x _y : ℤ) ↦ 1 + x) (x + x) 2 1

end Sequence

