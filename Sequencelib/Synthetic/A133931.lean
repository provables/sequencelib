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
# A133931 sequence 
-/


namespace Sequence

@[OEIS := A133931, offset := 1, derive := true, maxIndex := 37]
def A133931 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + (((x + x) + loop2 (λ (x y : ℤ) ↦ x + y) (λ (x _y : ℤ) ↦ x) x 1 1) + x))

end Sequence

