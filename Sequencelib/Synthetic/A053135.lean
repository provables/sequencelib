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
# A053135 sequence 
-/


namespace Sequence

@[OEIS := A053135, offset := 0, derive := true, maxIndex := 100]
def A053135 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ ((2 * ((x + x) + x)) / y) + x) (x + x) 1

end Sequence

