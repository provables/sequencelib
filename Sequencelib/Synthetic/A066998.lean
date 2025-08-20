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
# A066998 sequence 
-/


namespace Sequence

@[OEIS := A066998, offset := 0, derive := true, maxIndex := 100]
def A066998 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ 1 + ((x * y) * y)) x 0

end Sequence

