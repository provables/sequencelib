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
# A320997 sequence 
-/


namespace Sequence

@[OEIS := A320997, offset := 1, derive := true, maxIndex := 11]
def A320997 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y : ℤ) ↦ 1 + (y - ((x / 2) / 3))) (x + x) 1

end Sequence

