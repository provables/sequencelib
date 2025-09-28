/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A011872 sequence 
-/


namespace Sequence

@[OEIS := A011872, offset := 0, derive := true, maxIndex := 68]
def A011872 (x : ℕ) : ℕ :=
  Int.toNat <| (((x * x) - x) / (1 + (2 + loop (λ (x _y : ℤ) ↦ x * x) 2 2)))

end Sequence

