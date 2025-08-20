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
# A023453 sequence 
-/


namespace Sequence

@[OEIS := A023453, offset := 0, derive := true, maxIndex := 61]
def A023453 (x : ℕ) : ℤ :=
  (loop (λ (x y : ℤ) ↦ x - y) 4 x - 1)

end Sequence

