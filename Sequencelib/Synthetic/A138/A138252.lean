/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A138252 sequence
-/

namespace Sequence

@[OEIS := A138252, offset := 1, maxIndex := 60, derive := true]
def A138252 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((((((1 - (x / 2)) + x) / 3) + 1) + x) / 2) / 2) / 2) + 1) + x) + 2) + x) + x

end Sequence