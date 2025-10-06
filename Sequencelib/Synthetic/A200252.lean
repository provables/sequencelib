/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A200252 sequence
-/

namespace Sequence

@[OEIS := A200252, offset := 1, maxIndex := 100, derive := true]
def A200252 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((2 + x) * (((2 + x) * (4 + x)) / 2)) + 1) + 1) + x) / 2

end Sequence