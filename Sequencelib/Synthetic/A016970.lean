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
# A016970 sequence 
-/


namespace Sequence

@[OEIS := A016970, offset := 0, derive := true, maxIndex := 38]
def A016970 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (x + y) * (2 + x)) (λ (_x _y : ℤ) ↦ 2) 2 1 (x + x)

end Sequence

