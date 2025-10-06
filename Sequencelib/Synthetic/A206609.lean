/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A206609 sequence
-/

namespace Sequence

@[OEIS := A206609, offset := 1, maxIndex := 100, derive := true]
def A206609 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (_x y) ↦ 2 + y) (λ (x y) ↦ x + y) x (1 + (2 * (2 + 4))) (1 + (2 + 4))

end Sequence