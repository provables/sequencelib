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
# A344564 sequence 
-/


namespace Sequence

@[OEIS := A344564, offset := 0, derive := true, maxIndex := 26]
def A344564 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ 2 * ((2 * (2 * (x / y))) + x)) x 3

end Sequence

