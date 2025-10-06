/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A159783 sequence
-/

namespace Sequence

@[OEIS := A159783, offset := 1, maxIndex := 29, derive := true]
def A159783 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ ((x + x) * y) * y) y (1 + y) * x) x 1

end Sequence