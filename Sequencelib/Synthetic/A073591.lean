/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A073591 sequence 
-/


namespace Sequence

@[OEIS := A073591, offset := 0, derive := true, maxIndex := 100]
def A073591 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + loop (λ (x y : ℤ) ↦ 1 + (x * y)) x 1)

end Sequence

