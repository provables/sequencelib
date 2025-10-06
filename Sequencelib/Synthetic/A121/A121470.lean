/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A121470 sequence
-/

namespace Sequence

@[OEIS := A121470, offset := 1, maxIndex := 47, derive := true]
def A121470 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y) ↦ ((x + y) - y / 2) + y) x 0 * 3) + 1

end Sequence