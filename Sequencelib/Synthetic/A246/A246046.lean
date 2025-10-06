/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A246046 sequence
-/

namespace Sequence

@[OEIS := A246046, offset := 1, maxIndex := 65, derive := true]
def A246046 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((1 + (((x / 3) + x) + x)) / (1 + 4)) + 2) + x

end Sequence