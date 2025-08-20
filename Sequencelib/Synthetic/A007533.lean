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
# A007533 sequence 
-/


namespace Sequence

@[OEIS := A007533, offset := 0, derive := true, maxIndex := 42]
def A007533 (x : ℕ) : ℕ :=
  Int.toNat <| (2 + (loop (λ (x y : ℤ) ↦ (2 * ((x + x) + y)) + x) 2 x * x))

end Sequence

