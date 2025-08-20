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
# A100052 sequence 
-/


namespace Sequence

@[OEIS := A100052, offset := 0, derive := true, maxIndex := 60]
def A100052 (x : ℕ) : ℤ :=
  loop2 (λ (x y : ℤ) ↦ x - y) (λ (x _y : ℤ) ↦ x) (x - 1) (1 + (x + x)) 2

end Sequence

