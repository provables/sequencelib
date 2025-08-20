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
# A185114 sequence 
-/


namespace Sequence

@[OEIS := A185114, offset := 0, derive := true, maxIndex := 100]
def A185114 (x : ℕ) : ℕ :=
  Int.toNat <| (2 / loop (λ (x y : ℤ) ↦ 2 + (x / y)) x 2)

end Sequence

