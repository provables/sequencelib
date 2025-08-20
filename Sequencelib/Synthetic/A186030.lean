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
# A186030 sequence 
-/


namespace Sequence

@[OEIS := A186030, offset := 0, derive := true, maxIndex := 43]
def A186030 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop (λ (x y : ℤ) ↦ 1 - ((2 + y) * x)) 2 x + x) * x) / 2)

end Sequence

