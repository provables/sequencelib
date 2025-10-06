/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A112866 sequence
-/

namespace Sequence

@[OEIS := A112866, offset := 1, maxIndex := 7, derive := true]
def A112866 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (_x y) ↦ loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) y 1 0) (λ (x y) ↦ x + y) x 1 2

end Sequence