/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A278965 sequence
-/

namespace Sequence

@[OEIS := A278965, offset := 1, maxIndex := 9, derive := true]
def A278965 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((1 + loop2 (λ (_x y) ↦ y + y) (λ (x _y) ↦ x) x 2 2) / 3) + x

end Sequence