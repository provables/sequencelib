/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A337099 sequence
-/

namespace Sequence

@[OEIS := A337099, offset := 2, maxIndex := 29, derive := true]
def A337099 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop2 (λ (_x y) ↦ 1 + (y + y)) (λ (x _y) ↦ ((x * 2) * 2) + x) x 1 3

end Sequence