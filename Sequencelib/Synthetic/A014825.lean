/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A014825 sequence
-/

namespace Sequence

@[OEIS := A014825, offset := 1, maxIndex := 100, derive := true]
def A014825 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ 1 + ((2 * (x + x)) + y)) x 1

end Sequence