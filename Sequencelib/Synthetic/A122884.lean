/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A122884 sequence
-/

namespace Sequence

@[OEIS := A122884, offset := 1, maxIndex := 25, derive := true]
def A122884 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (loop2 (λ (x y) ↦ (x + x) + y) (λ (x _y) ↦ x) (y + y) 1 2 - x) - x) x 1

end Sequence