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
# A099672 sequence 
-/


namespace Sequence

@[OEIS := A099672, offset := 1, derive := true, maxIndex := 100]
def A099672 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y : ℤ) ↦ (3 + 2) * ((x + x) + y)) (1 + x) 0

end Sequence

