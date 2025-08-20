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
# A101386 sequence 
-/


namespace Sequence

@[OEIS := A101386, offset := 0, derive := true, maxIndex := 50]
def A101386 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (x + x) + y) (λ (x _y : ℤ) ↦ x) (1 + (x + x)) 1 3

end Sequence

