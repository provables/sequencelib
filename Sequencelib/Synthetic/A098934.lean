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
# A098934 sequence 
-/


namespace Sequence

@[OEIS := A098934, offset := 1, derive := true, maxIndex := 5]
def A098934 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop (λ (x y : ℤ) ↦ y - (x / y)) x (x + 1) + x) + x) + x)

end Sequence

