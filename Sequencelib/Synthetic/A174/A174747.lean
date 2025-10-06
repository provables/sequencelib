/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A174747 sequence
-/

namespace Sequence

@[OEIS := A174747, offset := 1, maxIndex := 50, derive := true]
def A174747 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ ((1 + (2 % (x + x))) * (2 * (x + x))) + y) (λ (x _y) ↦ x) (x + x) 1 2

end Sequence