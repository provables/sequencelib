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
# A160413 sequence 
-/


namespace Sequence

@[OEIS := A160413, offset := 1, derive := true, maxIndex := 65]
def A160413 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y : ℤ) ↦ 1 - (((y * y) + x) / x)) x 1 + x) + 1)

end Sequence

