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
# A085286 sequence 
-/


namespace Sequence

@[OEIS := A085286, offset := 0, derive := true, maxIndex := 5]
def A085286 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ ((((x * x) / 4) % x) + x) + y) x x

end Sequence

