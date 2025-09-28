/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A003860 sequence 
-/


namespace Sequence

@[OEIS := A003860, offset := 1, derive := true, maxIndex := 5]
def A003860 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (x + loop2 (λ (_x y : ℤ) ↦ y) (λ (_x _y : ℤ) ↦ 1) x 1 2)

end Sequence

