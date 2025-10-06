/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A076840 sequence
-/

namespace Sequence

@[OEIS := A076840, offset := 1, maxIndex := 100, derive := true]
def A076840 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ (loop (λ (x _y) ↦ (x + x) % (3 * 3)) x 1 / 2) - 1) 2 x + 2

end Sequence