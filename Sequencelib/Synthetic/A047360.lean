/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047360 sequence
-/

namespace Sequence

@[OEIS := A047360, offset := 1, maxIndex := 61, derive := true]
def A047360 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + ((2 * (2 * (x / 3))) + x)

end Sequence