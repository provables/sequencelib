/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010995 sequence
-/

namespace Sequence

@[OEIS := A010995, offset := 42, maxIndex := 100, derive := true]
def A010995 (n : ℕ) : ℕ :=
  let x := n - 42
  Int.toNat <| loop (λ (x y) ↦ ((loop (λ (x _y) ↦ (x * x) + x) 2 2 * x) / y) + x) x 1

end Sequence