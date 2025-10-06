/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A073588 sequence
-/

namespace Sequence

@[OEIS := A073588, offset := 1, maxIndex := 14, derive := true]
def A073588 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (2 * loop (λ (x _y) ↦ x + x) y x) - 1) x 1

end Sequence