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
# A092506 sequence 
-/


namespace Sequence

@[OEIS := A092506, offset := 1, derive := true, maxIndex := 6]
def A092506 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + loop2 (λ (_x y : ℤ) ↦ y) (λ (_x y : ℤ) ↦ y * y) x 1 2)

end Sequence

