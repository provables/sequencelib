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
# A174784 sequence 
-/


namespace Sequence

@[OEIS := A174784, offset := 0, derive := true, maxIndex := 91]
def A174784 (x : ℕ) : ℤ :=
  (loop (λ (x _y : ℤ) ↦ -x) (x / 2) 1 * ((x * x) % 3))

end Sequence

