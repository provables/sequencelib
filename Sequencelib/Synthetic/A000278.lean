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
# A000278 sequence 
-/


namespace Sequence

@[OEIS := A000278, offset := 0, derive := true, maxIndex := 50]
def A000278 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (y * y) + x) (λ (x _y : ℤ) ↦ x) x 0 1

end Sequence

