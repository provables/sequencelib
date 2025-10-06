/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A292058 sequence
-/

namespace Sequence

@[OEIS := A292058, offset := 1, maxIndex := 38, derive := true]
def A292058 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + x) * (loop (λ (x y) ↦ 2 + (x + y)) x 2 * x)

end Sequence