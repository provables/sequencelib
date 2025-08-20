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
# A047053 sequence 
-/


namespace Sequence

@[OEIS := A047053, offset := 0, derive := true, maxIndex := 17]
def A047053 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ 2 * (2 * (x * y))) x 1

end Sequence

