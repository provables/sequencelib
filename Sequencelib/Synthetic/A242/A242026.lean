/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A242026 sequence
-/

namespace Sequence

@[OEIS := A242026, offset := 1, maxIndex := 25, derive := true]
def A242026 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((x % 2) + loop (λ (x _y) ↦ x + x) x 2) - 1) - 1) * loop (λ (x _y) ↦ x + x) x 2

end Sequence