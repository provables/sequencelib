/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A060728 sequence
-/

namespace Sequence

@[OEIS := A060728, offset := 1, maxIndex := 5, derive := true]
def A060728 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ 2 - loop (λ (x y) ↦ x - y) x y) x 1 + 2

end Sequence