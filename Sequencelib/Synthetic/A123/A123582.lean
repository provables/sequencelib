/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A123582 sequence
-/

namespace Sequence

@[OEIS := A123582, offset := 1, maxIndex := 12, derive := true]
def A123582 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x x 2 / 2) % 2) + x) % 2) + 1) + x % 2

end Sequence