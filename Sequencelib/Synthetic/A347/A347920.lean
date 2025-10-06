/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A347920 sequence
-/

namespace Sequence

@[OEIS := A347920, offset := 3, maxIndex := 6, derive := true]
def A347920 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| ((loop (λ (x y) ↦ (1 + y) * ((((x * 2) * 2) + y) + y)) x 1 + 1) / 2) + 2

end Sequence