/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A276878 sequence
-/

namespace Sequence

@[OEIS := A276878, offset := 1, maxIndex := 66, derive := true]
def A276878 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((((((((((((((x + x) / 3) + x) + x) / 3) + x) / 2) / 2) + x) / 2) + x) / 2) + x) / 2) / 2) / 2) + 1) + x) * 2) -
    1) -
  x

end Sequence