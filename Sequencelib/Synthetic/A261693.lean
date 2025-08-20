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
# A261693 sequence 
-/


namespace Sequence

@[OEIS := A261693, offset := 0, derive := true, maxIndex := 82]
def A261693 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ (x - 1) % y) (x + x) 0

end Sequence

