/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A104777 sequence
-/

namespace Sequence

@[OEIS := A104777, offset := 1, maxIndex := 100, derive := true]
def A104777 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ x * x) 1 (1 + ((((x % 2) + x) + x) + x))

end Sequence