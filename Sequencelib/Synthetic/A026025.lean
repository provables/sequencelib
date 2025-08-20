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
# A026025 sequence 
-/


namespace Sequence

@[OEIS := A026025, offset := 0, derive := true, maxIndex := 19]
def A026025 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ ((x * y) * y) + y) x 1

end Sequence

