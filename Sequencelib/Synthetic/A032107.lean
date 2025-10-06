/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A032107 sequence
-/

namespace Sequence

@[OEIS := A032107, offset := 1, maxIndex := 17, derive := true]
def A032107 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ ((y + (2 % x)) + y) * x) x 2

end Sequence