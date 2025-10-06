/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A180569 sequence
-/

namespace Sequence

@[OEIS := A180569, offset := 1, maxIndex := 100, derive := true]
def A180569 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 + ((x + x) + x)) * loop (λ (x y) ↦ 2 + (x + y)) x 2

end Sequence