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
# A204429 sequence 
-/


namespace Sequence

@[OEIS := A204429, offset := 1, derive := true, maxIndex := 99]
def A204429 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y : ℤ) ↦ (y / x) + 2) (x + x) 2 * 2) % 3)

end Sequence

