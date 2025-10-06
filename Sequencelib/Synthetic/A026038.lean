/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A026038 sequence
-/

namespace Sequence

@[OEIS := A026038, offset := 3, maxIndex := 53, derive := true]
def A026038 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| loop (λ (x y) ↦ 2 + ((y * y) + x)) (2 + x) 2 / 2

end Sequence