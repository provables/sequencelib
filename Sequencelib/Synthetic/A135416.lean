/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A135416 sequence
-/

namespace Sequence

@[OEIS := A135416, offset := 1, maxIndex := 100, derive := true]
def A135416 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ 2 * (((x / y) + x) + x)) x 1 % (2 + x)

end Sequence