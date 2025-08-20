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
# A264147 sequence 
-/


namespace Sequence

@[OEIS := A264147, offset := 0, derive := true, maxIndex := 100]
def A264147 (x : ℕ) : ℤ :=
  loop2 (λ (_x y : ℤ) ↦ -y) (λ (x y : ℤ) ↦ y - x) x x 1

end Sequence

