/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A225240 sequence
-/

namespace Sequence

@[OEIS := A225240, offset := 1, maxIndex := 32, derive := true]
def A225240 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + (((((x / 2) / 2) % 2) + x) + x)

end Sequence