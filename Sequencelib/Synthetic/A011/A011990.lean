/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A011990 sequence
-/

namespace Sequence

@[OEIS := A011990, offset := 9, maxIndex := 12, derive := true]
def A011990 (n : ℕ) : ℕ :=
  let x := n - 9
  Int.toNat <| 1 + ((2 * ((x % 2) + x)) + x)

end Sequence