/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A113803 sequence
-/

namespace Sequence

@[OEIS := A113803, offset := 1, maxIndex := 53, derive := true]
def A113803 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ ((2 * (x / y)) + y) + x) 2 x + x

end Sequence