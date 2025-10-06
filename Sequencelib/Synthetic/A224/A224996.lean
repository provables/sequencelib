/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A224996 sequence
-/

namespace Sequence

@[OEIS := A224996, offset := 2, maxIndex := 68, derive := true]
def A224996 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (((((((((((x / 2) + x) / ((2 * 2) + 1)) + 1) + x) / 2) / 2) + 1) + x) / 3) + x) + 2

end Sequence