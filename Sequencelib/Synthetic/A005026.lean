/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A005026 sequence
-/

namespace Sequence

@[OEIS := A005026, offset := 6, maxIndex := 9, derive := true]
def A005026 (n : ℕ) : ℕ :=
  let x := n - 6
  Int.toNat <| ((loop (λ (x y) ↦ (((y / 2) + x) * x) * 2) x 1 * (1 + x)) + 1) - loop (λ (_x y) ↦ y) x 1

end Sequence