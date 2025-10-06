/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A085866 sequence
-/

namespace Sequence

@[OEIS := A085866, offset := 1, maxIndex := 10, derive := true]
def A085866 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (_x y) ↦ y) (λ (_x y) ↦ y * y) x 1 2 * 3

end Sequence