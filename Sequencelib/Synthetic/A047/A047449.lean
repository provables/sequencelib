/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047449 sequence
-/

namespace Sequence

@[OEIS := A047449, offset := 1, maxIndex := 67, derive := true]
def A047449 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x) ↦ 1 - (((x - (x / 2)) * x) % 4)) x

end Sequence