/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A074494 sequence
-/

namespace Sequence

@[OEIS := A074494, offset := 1, maxIndex := 29, derive := true]
def A074494 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ ((x * y) + x) + y) (λ (_x _y) ↦ 1) x 2 x

end Sequence