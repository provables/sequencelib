/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A229858 sequence
-/

namespace Sequence

@[OEIS := A229858, offset := 1, maxIndex := 66, derive := true]
def A229858 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop2 (λ (_x y) ↦ y) (λ (_x _y) ↦ 2) (x / 2) x 1 + 1) + x) + 2

end Sequence