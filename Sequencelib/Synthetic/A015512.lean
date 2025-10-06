/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A015512 sequence
-/

namespace Sequence

@[OEIS := A015512, offset := 1, maxIndex := 45, derive := true]
def A015512 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ ((loop (λ (x _y) ↦ 1 + (2 * ((2 * (x + x)) + x))) y 1 * (x + x)) / 2) + x) (x - 1) 1

end Sequence