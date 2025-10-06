/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A329994 sequence
-/

namespace Sequence

@[OEIS := A329994, offset := 1, maxIndex := 60, derive := true]
def A329994 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((x - (((x / 2) / 2) / 3)) / 2) + 2) + x) + x

end Sequence