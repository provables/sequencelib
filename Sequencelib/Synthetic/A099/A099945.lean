/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A099945 sequence
-/

namespace Sequence

@[OEIS := A099945, offset := 3, maxIndex := 28, derive := true]
def A099945 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| (loop (λ (x y) ↦ (x * x) + y) 2 2 * loop (λ (x _y) ↦ (1 + x) + x) (x + 2) 1) - 1

end Sequence