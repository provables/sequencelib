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
# A180064 sequence 
-/


namespace Sequence

@[OEIS := A180064, offset := 0, derive := true, maxIndex := 26]
def A180064 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ (x * y) * y) (x / 2) 1

end Sequence

