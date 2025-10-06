/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A064671 sequence
-/

namespace Sequence

@[OEIS := A064671, offset := 1, maxIndex := 25, derive := true]
def A064671 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y) ↦ (x + x) + y) x 0 * loop (λ (x _y) ↦ x + x) x 1) + x

end Sequence