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
# A182193 sequence 
-/


namespace Sequence

@[OEIS := A182193, offset := 0, derive := true, maxIndex := 50]
def A182193 (x : ℕ) : ℤ :=
  ((loop2 (λ (_x y : ℤ) ↦ y) (λ (x y : ℤ) ↦ (x + y) + y) (x + x) 2 1 - 1) - 2)

end Sequence

