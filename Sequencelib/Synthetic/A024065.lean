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
# A024065 sequence 
-/


namespace Sequence

@[OEIS := A024065, offset := 0, derive := true, maxIndex := 20]
def A024065 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ 2 * ((x + x) + x)) x 1 - (x * x) * x)

end Sequence

