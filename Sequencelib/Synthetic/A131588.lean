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
# A131588 sequence 
-/


namespace Sequence

@[OEIS := A131588, offset := 0, derive := true, maxIndex := 33]
def A131588 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y : ℤ) ↦ y) (λ (x y : ℤ) ↦ (x + x) + y) x ((x % 2) + 1) 1

end Sequence

