/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A302488 sequence
-/

namespace Sequence

@[OEIS := A302488, offset := 2, maxIndex := 61, derive := true]
def A302488 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| 1 + ((2 * ((x * x) / (2 * 4))) + x)

end Sequence