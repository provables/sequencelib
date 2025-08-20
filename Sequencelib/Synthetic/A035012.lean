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
# A035012 sequence 
-/


namespace Sequence

@[OEIS := A035012, offset := 1, derive := true, maxIndex := 100]
def A035012 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y : ℤ) ↦ (2 + loop (λ (x _y : ℤ) ↦ (x + x) + x) 2 y) * x) x 1

end Sequence

