/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A216112 sequence
-/

namespace Sequence

@[OEIS := A216112, offset := 1, maxIndex := 30, derive := true]
def A216112 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x _y) ↦ (x * x) * x) 1 (2 + (x + x)) + 1) + x) * 3

end Sequence