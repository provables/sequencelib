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
# A014225 sequence 
-/


namespace Sequence

@[OEIS := A014225, offset := 0, derive := true, maxIndex := 5]
def A014225 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ ((x * x) / y) + y) x 1

end Sequence

