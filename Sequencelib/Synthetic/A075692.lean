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
# A075692 sequence 
-/


namespace Sequence

@[OEIS := A075692, offset := 1, derive := true, maxIndex := 10]
def A075692 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y : ℤ) ↦ (x / 2) + y) x (1 - x)

end Sequence

