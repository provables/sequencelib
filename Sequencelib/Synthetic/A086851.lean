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
# A086851 sequence 
-/


namespace Sequence

@[OEIS := A086851, offset := 0, derive := true, maxIndex := 10]
def A086851 (x : ℕ) : ℤ :=
  loop (λ (x y : ℤ) ↦ 1 + ((x * x) - y)) x 1

end Sequence

