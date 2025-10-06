/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047620 sequence
-/

namespace Sequence

@[OEIS := A047620, offset := 1, maxIndex := 63, derive := true]
def A047620 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (x + x) - loop2 (λ (_x y) ↦ 2 - y) (λ (x _y) ↦ x) x 0 1

end Sequence