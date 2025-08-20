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
# A180598 sequence 
-/


namespace Sequence

@[OEIS := A180598, offset := 0, derive := true, maxIndex := 100]
def A180598 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ 1 + ((x - 2) % (1 + (2 * 4)))) x 0

end Sequence

