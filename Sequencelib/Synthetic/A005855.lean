/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A005855 sequence
-/

namespace Sequence

@[OEIS := A005855, offset := 7, maxIndex := 22, derive := true]
def A005855 (n : ℕ) : ℕ :=
  let x := n - 7
  Int.toNat <| (((loop (λ (x y) ↦ 1 + ((x / (1 + (2 + (y % 2)))) + x)) x 1 / 2) / 2) / 2) + 1

end Sequence