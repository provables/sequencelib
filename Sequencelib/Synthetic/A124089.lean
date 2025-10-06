/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A124089 sequence
-/

namespace Sequence

@[OEIS := A124089, offset := 6, maxIndex := 39, derive := true]
def A124089 (n : ℕ) : ℕ :=
  let x := n - 6
  Int.toNat <| loop (λ (x y) ↦ ((2 * ((x + x) + x)) / y) + x) x 1 - 1

end Sequence