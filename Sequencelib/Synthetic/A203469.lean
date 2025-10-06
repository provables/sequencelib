/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A203469 sequence
-/

namespace Sequence

@[OEIS := A203469, offset := 1, maxIndex := 54, derive := true]
def A203469 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ loop (λ (x y) ↦ 2 * (((x / y) + x) + x)) x 1 / (1 + x)) 1 y * x) x 1

end Sequence