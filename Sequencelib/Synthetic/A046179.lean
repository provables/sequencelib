/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A046179 sequence
-/

namespace Sequence

@[OEIS := A046179, offset := 1, maxIndex := 50, derive := true]
def A046179 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ ((2 * (x + x)) - 1) - y) (λ (x _y) ↦ x) ((x * 2) * 2) 2 1 / 2

end Sequence