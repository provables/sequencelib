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
# A255981 sequence 
-/


namespace Sequence

@[OEIS := A255981, offset := 2, derive := true, maxIndex := 5]
def A255981 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x y : ℤ) ↦ x + y) (1 + x) 2

end Sequence

