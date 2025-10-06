/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A339196 sequence
-/

namespace Sequence

@[OEIS := A339196, offset := 2, maxIndex := 100, derive := true]
def A339196 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| ((2 * (2 * loop (λ (x y) ↦ 2 + (2 * (x + y))) x 2)) - 1) - x

end Sequence