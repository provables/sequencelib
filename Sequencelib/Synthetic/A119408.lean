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
# A119408 sequence 
-/


namespace Sequence

@[OEIS := A119408, offset := 1, derive := true, maxIndex := 50]
def A119408 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ 1 + loop (λ (x _y : ℤ) ↦ x + x) (2 + y) x) (λ (_x y : ℤ) ↦ y) x 1 x

end Sequence

