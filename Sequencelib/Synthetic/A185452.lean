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
# A185452 sequence 
-/


namespace Sequence

@[OEIS := A185452, offset := 0, derive := true, maxIndex := 80]
def A185452 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y : ℤ) ↦ y - x) x (-x) + x)

end Sequence

