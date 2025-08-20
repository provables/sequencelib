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
# A050914 sequence 
-/


namespace Sequence

@[OEIS := A050914, offset := 0, derive := true, maxIndex := 100]
def A050914 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + loop (λ (x _y : ℤ) ↦ (x + x) + x) x x)

end Sequence

