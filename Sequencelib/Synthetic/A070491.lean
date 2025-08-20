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
# A070491 sequence 
-/


namespace Sequence

@[OEIS := A070491, offset := 0, derive := true, maxIndex := 100]
def A070491 (x : ℕ) : ℕ :=
  Int.toNat <| (((x * x) * x) % (2 + loop (λ (x y : ℤ) ↦ (x * x) + y) 2 2))

end Sequence

