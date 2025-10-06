/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A218555 sequence
-/

namespace Sequence

@[OEIS := A218555, offset := 3, maxIndex := 6, derive := true]
def A218555 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| (((((((((((3 * (x / 2)) + x) + x) * 2) * 3) * x) + x) / 4) + 2) * 2) + 2) + 2

end Sequence