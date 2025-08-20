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
# A016952 sequence 
-/


namespace Sequence

@[OEIS := A016952, offset := 0, derive := true, maxIndex := 17]
def A016952 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ x * x) 3 (3 * (1 + (x + x)))

end Sequence

