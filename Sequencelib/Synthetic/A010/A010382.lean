/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010382 sequence
-/

namespace Sequence

@[OEIS := A010382, offset := 1, maxIndex := 6, derive := true]
def A010382 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (2 * loop (λ (_x y) ↦ y) ((x - 2) - 2) x) + y) x 1 / 2

end Sequence