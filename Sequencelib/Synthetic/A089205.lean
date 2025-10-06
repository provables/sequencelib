/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A089205 sequence
-/

namespace Sequence

@[OEIS := A089205, offset := 1, maxIndex := 17, derive := true]
def A089205 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (x * y) + x) (λ (_x y) ↦ y) (1 + x) x x

end Sequence