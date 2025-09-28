/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A143432 sequence 
-/


namespace Sequence

@[OEIS := A143432, offset := 0, derive := true, maxIndex := 100]
def A143432 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ if x ≤ 0 then 2 else 0) (x / 2) 1

end Sequence

