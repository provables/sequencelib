/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A307991 sequence
-/

namespace Sequence

@[OEIS := A307991, offset := 1, maxIndex := 4, derive := true]
def A307991 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ loop (λ (x y) ↦ ((x % 2) + y) * x) 2 x + y) (λ (x _y) ↦ x) x (1 + x) 1

end Sequence