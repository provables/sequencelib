/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047403 sequence
-/

namespace Sequence

@[OEIS := A047403, offset := 1, maxIndex := 65, derive := true]
def A047403 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (x - (((x * x) / (2 * 2)) % 2)) + x

end Sequence