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
# A006528 sequence 
-/


namespace Sequence

@[OEIS := A006528, offset := 0, derive := true, maxIndex := 50]
def A006528 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y : ℤ) ↦ x + y) (x * x) x / 2)

end Sequence

