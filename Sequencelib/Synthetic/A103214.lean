/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta
import GenSeq

open Synth

/-!
# A103214 sequence 
-/


namespace Sequence

@[OEIS := A103214, offset := 0, derive := true, maxIndex := 51]
def A103214 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + loop (λ (x y : ℤ) ↦ x * y) 4 x)

end Sequence

