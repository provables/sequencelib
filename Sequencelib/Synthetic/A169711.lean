/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A169711 sequence
-/

namespace Sequence

@[OEIS := A169711, offset := 1, maxIndex := 100, derive := true]
def A169711 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + x) * loop (λ (x y) ↦ ((y + x) + y) + y) (x + x) 1

end Sequence