/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A237187 sequence
-/

namespace Sequence

@[OEIS := A237187, offset := 1, maxIndex := 12, derive := true]
def A237187 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ (1 + (x + x)) + y) (y * 2) 1 * x) x 1

end Sequence