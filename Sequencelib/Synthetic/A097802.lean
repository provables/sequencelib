/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A097802 sequence 
-/


namespace Sequence

@[OEIS := A097802, offset := 0, derive := true, maxIndex := 48]
def A097802 (x : ℕ) : ℕ :=
  Int.toNat <| (3 * (1 + (x + loop (λ (x y : ℤ) ↦ x * y) 4 x)))

end Sequence

