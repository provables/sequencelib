/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A151611 sequence
-/

namespace Sequence

@[OEIS := A151611, offset := 1, maxIndex := 8, derive := true]
def A151611 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ 2 + (((1 + x) * (2 + x)) / 2)) x 2 + 2

end Sequence