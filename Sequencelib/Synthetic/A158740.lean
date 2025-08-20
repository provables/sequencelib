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
# A158740 sequence 
-/


namespace Sequence

@[OEIS := A158740, offset := 0, derive := true, maxIndex := 100]
def A158740 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + ((loop (λ (x _y : ℤ) ↦ 2 * ((x + x) + x)) 2 2 * x) * x))

end Sequence

