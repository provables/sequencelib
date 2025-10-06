/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A079511 sequence
-/

namespace Sequence

@[OEIS := A079511, offset := 2, maxIndex := 14, derive := true]
def A079511 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| ((((((x / 2) * x) + x) / ((2 * 3) + 1)) + 1) + x) + x

end Sequence