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
# A154281 sequence 
-/


namespace Sequence

@[OEIS := A154281, offset := 1, derive := true, maxIndex := 95]
def A154281 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 / loop (λ (_x y : ℤ) ↦ y) (x - 2) (1 + x))

end Sequence

