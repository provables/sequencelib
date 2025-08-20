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
# A100545 sequence 
-/


namespace Sequence

@[OEIS := A100545, offset := 0, derive := true, maxIndex := 50]
def A100545 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ x + y) (λ (x _y : ℤ) ↦ x) (2 + (x + x)) 2 3

end Sequence

