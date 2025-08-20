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
# A110862 sequence 
-/


namespace Sequence

@[OEIS := A110862, offset := 1, derive := true, maxIndex := 12]
def A110862 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((x - (loop (λ (x y : ℤ) ↦ y - x) (x / 2) 1 % 2)) / 2) + 2)

end Sequence

