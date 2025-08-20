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
# A260196 sequence 
-/


namespace Sequence

@[OEIS := A260196, offset := 0, derive := true, maxIndex := 100]
def A260196 (x : ℕ) : ℤ :=
  (1 - loop2 (λ (_x y : ℤ) ↦ 2 + y) (λ (_x _y : ℤ) ↦ 0) x 0 2)

end Sequence

