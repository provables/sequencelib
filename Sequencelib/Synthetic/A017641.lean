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
# A017641 sequence 
-/


namespace Sequence

@[OEIS := A017641, offset := 0, derive := true, maxIndex := 53]
def A017641 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ 2 + ((2 + y) * x)) 2 x

end Sequence

