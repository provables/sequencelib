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
# A127859 sequence 
-/


namespace Sequence

@[OEIS := A127859, offset := 1, derive := true, maxIndex := 17]
def A127859 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y : ℤ) ↦ loop (λ (x y : ℤ) ↦ ((2 + y) * x) - 1) 2 x) (1 + x) 1

end Sequence

