/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047441 sequence
-/

namespace Sequence

@[OEIS := A047441, offset := 1, maxIndex := 63, derive := true]
def A047441 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((1 + x) * (x / 2)) % 2) + x) + x

end Sequence