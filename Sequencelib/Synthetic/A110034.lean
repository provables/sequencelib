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
# A110034 sequence 
-/


namespace Sequence

@[OEIS := A110034, offset := 0, derive := true, maxIndex := 30]
def A110034 (x : ℕ) : ℤ :=
  loop2 (λ (x y : ℤ) ↦ (2 * ((x / 2) + x)) - y) (λ (x _y : ℤ) ↦ x) x 1 2

end Sequence

