/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A103460 sequence 
-/


namespace Sequence

@[OEIS := A103460, offset := 0, derive := true, maxIndex := 100]
def A103460 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + if x ≤ 0 then 0 else loop (λ (x _y : ℤ) ↦ (x + x) + x) (x + x) 1)

end Sequence

