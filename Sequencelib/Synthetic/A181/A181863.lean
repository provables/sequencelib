/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A181863 sequence
-/

namespace Sequence

@[OEIS := A181863, offset := 1, maxIndex := 4, derive := true]
def A181863 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((2 + x) * (1 + (x * x))) + x / 2) * 2) - 1

end Sequence