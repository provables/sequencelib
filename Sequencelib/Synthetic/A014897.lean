/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A014897 sequence
-/

namespace Sequence

@[OEIS := A014897, offset := 1, maxIndex := 100, derive := true]
def A014897 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ 1 + ((loop (λ (x _y) ↦ 2 + (x + x)) 2 2 * x) + y)) x 1

end Sequence