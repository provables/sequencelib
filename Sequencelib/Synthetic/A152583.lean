/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A152583 sequence 
-/


namespace Sequence

@[OEIS := A152583, offset := 1, derive := true, maxIndex := 7]
def A152583 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 + loop (λ (x _y : ℤ) ↦ x * x) x (loop (λ (x _y : ℤ) ↦ 1 + (x + x)) 2 2))

end Sequence

