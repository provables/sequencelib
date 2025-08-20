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
# A152832 sequence 
-/


namespace Sequence

@[OEIS := A152832, offset := 0, derive := true, maxIndex := 75]
def A152832 (x : ℕ) : ℤ :=
  loop (λ (x y : ℤ) ↦ y - x) x (-2)

end Sequence

