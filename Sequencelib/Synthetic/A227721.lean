/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A227721 sequence 
-/


namespace Sequence

@[OEIS := A227721, offset := 1, derive := true, maxIndex := 100]
def A227721 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y : ℤ) ↦ (x * y) + y) 3 x * (x + 1)) + 2)

end Sequence

