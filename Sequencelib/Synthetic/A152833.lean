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
# A152833 sequence 
-/


namespace Sequence

@[OEIS := A152833, offset := 0, derive := true, maxIndex := 75]
def A152833 (x : ℕ) : ℤ :=
  loop (λ (x y : ℤ) ↦ y - x) x (-3)

end Sequence

