/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A108195 sequence
-/

namespace Sequence

@[OEIS := A108195, offset := 1, maxIndex := 100, derive := true]
def A108195 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 * loop (λ (x y) ↦ x + y) (2 + x) x) - 1

end Sequence