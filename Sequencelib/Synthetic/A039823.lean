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
# A039823 sequence 
-/


namespace Sequence

@[OEIS := A039823, offset := 1, derive := true, maxIndex := 57]
def A039823 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y : ℤ) ↦ x + y) (1 + x) 2 / 2)

end Sequence

