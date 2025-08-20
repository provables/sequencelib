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
# A058582 sequence 
-/


namespace Sequence

@[OEIS := A058582, offset := 0, derive := true, maxIndex := 36]
def A058582 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ x + x) (x / 2) (1 + ((x + x) - x / 2))

end Sequence

