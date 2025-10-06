/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A005280 sequence
-/

namespace Sequence

@[OEIS := A005280, offset := 1, maxIndex := 6, derive := true]
def A005280 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ 2 + (2 + ((x / (2 + y)) + x))) x 1

end Sequence