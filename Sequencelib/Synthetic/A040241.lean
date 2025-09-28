/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A040241 sequence 
-/


namespace Sequence

@[OEIS := A040241, offset := 0, derive := true, maxIndex := 63]
def A040241 (x : ℕ) : ℕ :=
  Int.toNat <| (2 * (2 * (2 * (loop (λ (x _y : ℤ) ↦ if x ≤ 0 then 2 else 0) x x + 2))))

end Sequence

