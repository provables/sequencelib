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
# A175979 sequence 
-/


namespace Sequence

@[OEIS := A175979, offset := 1, derive := true, maxIndex := 4]
def A175979 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y : ℤ) ↦ 1 + loop2 (λ (x y : ℤ) ↦ (x * y) + x) (λ (_x y : ℤ) ↦ y) x 1 y) x 1

end Sequence

