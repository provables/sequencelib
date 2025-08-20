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
# A003056 sequence 
-/


namespace Sequence

@[OEIS := A003056, offset := 0, derive := true, maxIndex := 100]
def A003056 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ y / (2 + x)) (x + x) 0

end Sequence

