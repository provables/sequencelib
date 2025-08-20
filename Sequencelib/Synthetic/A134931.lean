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
# A134931 sequence 
-/


namespace Sequence

@[OEIS := A134931, offset := 0, derive := true, maxIndex := 26]
def A134931 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ 3 * (1 + x)) x 1

end Sequence

