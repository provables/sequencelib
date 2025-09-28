/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A117855 sequence 
-/


namespace Sequence

@[OEIS := A117855, offset := 1, derive := true, maxIndex := 37]
def A117855 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y : ℤ) ↦ (x + x) + x) (x / 2) 2

end Sequence

