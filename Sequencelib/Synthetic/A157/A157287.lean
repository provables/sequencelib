/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A157287 sequence
-/

namespace Sequence

@[OEIS := A157287, offset := 1, maxIndex := 100, derive := true]
def A157287 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x _y) ↦ loop (λ (x y) ↦ (2 + y) * x) 2 x) 2 (1 + x) - 2) * 3) * 4

end Sequence