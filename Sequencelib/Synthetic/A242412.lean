/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A242412 sequence
-/

namespace Sequence

@[OEIS := A242412, offset := 1, maxIndex := 100, derive := true]
def A242412 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 * (2 * (2 * loop (λ (x y) ↦ x + y) x 2))) - 1

end Sequence