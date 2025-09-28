/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A093610 sequence 
-/


namespace Sequence

@[OEIS := A093610, offset := 1, derive := true, maxIndex := 69]
def A093610 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop (λ (x _y : ℤ) ↦ 2 + (x / 2)) 2 (x / 2) + x) / 2) + x)

end Sequence

