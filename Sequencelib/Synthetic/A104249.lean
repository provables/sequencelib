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
# A104249 sequence 
-/


namespace Sequence

@[OEIS := A104249, offset := 0, derive := true, maxIndex := 49]
def A104249 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + loop (λ (x y : ℤ) ↦ x + y) x (x * x))

end Sequence

