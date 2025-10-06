/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A051943 sequence
-/

namespace Sequence

@[OEIS := A051943, offset := 9, maxIndex := 100, derive := true]
def A051943 (n : ℕ) : ℕ :=
  let x := n - 9
  Int.toNat <| loop (λ (x y) ↦ (((loop (λ (x _y) ↦ (x + x) + x) 2 2 + y) * y) + x) + y) x 1 / 2

end Sequence