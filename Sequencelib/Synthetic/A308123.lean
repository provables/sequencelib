/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A308123 sequence
-/

namespace Sequence

@[OEIS := A308123, offset := 1, maxIndex := 57, derive := true]
def A308123 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + x) * (loop (λ (x y) ↦ y - x) x 1 / 2)

end Sequence