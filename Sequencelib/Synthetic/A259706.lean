/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A259706 sequence
-/

namespace Sequence

@[OEIS := A259706, offset := 2, maxIndex := 8, derive := true]
def A259706 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (loop (λ (x y) ↦ ((1 % x) + y) * x) x 1 * ((x * x) / 2)) / 2

end Sequence