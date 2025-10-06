/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A098916 sequence
-/

namespace Sequence

@[OEIS := A098916, offset := 3, maxIndex := 100, derive := true]
def A098916 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| (1 + x) * loop (λ (x y) ↦ (x * y) + x) x x

end Sequence