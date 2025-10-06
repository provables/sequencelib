/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A282739 sequence
-/

namespace Sequence

@[OEIS := A282739, offset := 3, maxIndex := 10, derive := true]
def A282739 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| (2 * loop (λ (x y) ↦ (y / ((((x / 2) / 2) / 2) + 1)) + x) x 2) + 1

end Sequence