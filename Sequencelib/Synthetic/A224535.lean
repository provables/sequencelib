/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A224535 sequence 
-/


namespace Sequence

@[OEIS := A224535, offset := 1, derive := true, maxIndex := 60]
def A224535 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y : ℤ) ↦ (2 + loop (λ (_x y : ℤ) ↦ 2 + y) x 1) * y) 2 x + 1)

end Sequence

