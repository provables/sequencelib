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
# A058227 sequence 
-/


namespace Sequence

@[OEIS := A058227, offset := 1, derive := true, maxIndex := 8]
def A058227 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop (λ (x y : ℤ) ↦ (x + x) + y) (1 + x) 2 * x) + 2) * 2)

end Sequence

