/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A113909 sequence
-/

namespace Sequence

@[OEIS := A113909, offset := 1, maxIndex := 55, derive := true]
def A113909 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y) ↦ (y / ((x * x) / 2)) + x) x 2 + x) * 2) + 1

end Sequence