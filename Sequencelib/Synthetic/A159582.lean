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
# A159582 sequence 
-/


namespace Sequence

@[OEIS := A159582, offset := 0, derive := true, maxIndex := 100]
def A159582 (x : ℕ) : ℕ :=
  Int.toNat <| (((x % 2) + 1) * loop2 (λ (x y : ℤ) ↦ (x + x) + y) (λ (x _y : ℤ) ↦ x) x 1 1)

end Sequence

