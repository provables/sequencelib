/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A075796 sequence
-/

namespace Sequence

@[OEIS := A075796, offset := 1, maxIndex := 50, derive := true]
def A075796 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (2 * (x + x)) + y) (λ (x _y) ↦ x) (x + x) 2 1

end Sequence