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
# A014021 sequence 
-/


namespace Sequence

@[OEIS := A014021, offset := 0, derive := true, maxIndex := 100]
def A014021 (x : ℕ) : ℤ :=
  (((x - 1) % 2) * loop2 (λ (x y : ℤ) ↦ x - y) (λ (x _y : ℤ) ↦ x) (x / 2) 1 0)

end Sequence

