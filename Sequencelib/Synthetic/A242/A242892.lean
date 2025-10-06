/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A242892 sequence
-/

namespace Sequence

@[OEIS := A242892, offset := 1, maxIndex := 6, derive := true]
def A242892 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 - loop2 (λ (x y) ↦ x - y) (λ (x _y) ↦ x) x 1 0) * loop (λ (x _y) ↦ (2 * x) + x) 2 1

end Sequence