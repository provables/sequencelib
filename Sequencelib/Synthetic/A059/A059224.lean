/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A059224 sequence
-/

namespace Sequence

@[OEIS := A059224, offset := 3, maxIndex := 100, derive := true]
def A059224 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| (loop (λ (x y) ↦ 2 + (x + y)) (2 * (2 + x)) x + x) * loop (λ (x _y) ↦ x + x) x 1

end Sequence