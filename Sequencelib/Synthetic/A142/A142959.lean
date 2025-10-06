/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A142959 sequence
-/

namespace Sequence

@[OEIS := A142959, offset := 1, maxIndex := 5, derive := true]
def A142959 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((2 * (2 * (2 + (x * x)))) - 1) * ((x / 2) / 2)) + 1) + x

end Sequence