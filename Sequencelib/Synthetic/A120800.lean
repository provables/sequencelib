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
# A120800 sequence 
-/


namespace Sequence

@[OEIS := A120800, offset := 0, derive := true, maxIndex := 11]
def A120800 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (x + x) + y) (λ (_x y : ℤ) ↦ (y + y) + y) (x * x) 2 1

end Sequence

