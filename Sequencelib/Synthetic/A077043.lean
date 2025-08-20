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
# A077043 sequence 
-/


namespace Sequence

@[OEIS := A077043, offset := 0, derive := true, maxIndex := 52]
def A077043 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ x - (y / 2)) x (x * x)

end Sequence

