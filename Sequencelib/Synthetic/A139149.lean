/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A139149 sequence 
-/


namespace Sequence

@[OEIS := A139149, offset := 2, derive := true, maxIndex := 100]
def A139149 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (1 + loop (λ (x y : ℤ) ↦ (2 + y) * x) x 1)

end Sequence

