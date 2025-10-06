/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A212344 sequence
-/

namespace Sequence

@[OEIS := A212344, offset := 3, maxIndex := 29, derive := true]
def A212344 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| (loop (λ (x y) ↦ 2 * ((2 * (x * y)) - x)) x 1 / loop (λ (x y) ↦ (x * y) + x) x 1) * (1 + 4)

end Sequence