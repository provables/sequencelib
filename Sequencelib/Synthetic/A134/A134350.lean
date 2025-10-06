/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A134350 sequence
-/

namespace Sequence

@[OEIS := A134350, offset := 1, maxIndex := 14, derive := true]
def A134350 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ 2 + ((x + x) + y)) (λ (_x y) ↦ (y + y) + y) x 2 2 - 1

end Sequence