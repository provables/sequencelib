/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A178405 sequence 
-/


namespace Sequence

@[OEIS := A178405, offset := 1, derive := true, maxIndex := 10]
def A178405 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + loop (λ (x y : ℤ) ↦ x + y) 4 x)

end Sequence

