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
# A178970 sequence 
-/


namespace Sequence

@[OEIS := A178970, offset := 1, derive := true, maxIndex := 70]
def A178970 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ x + x) (x + x) 2 % (1 + (2 + (x + x))))

end Sequence

