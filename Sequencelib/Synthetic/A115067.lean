/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A115067 sequence 
-/


namespace Sequence

@[OEIS := A115067, offset := 1, derive := true, maxIndex := 100]
def A115067 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y : ℤ) ↦ 2 + (x + y)) x (x * x)

end Sequence

