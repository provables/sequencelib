/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A025685 sequence
-/

namespace Sequence

@[OEIS := A025685, offset := 1, maxIndex := 100, derive := true]
def A025685 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| x % loop (λ (x y) ↦ 1 + (y / (x + 1))) x 1

end Sequence