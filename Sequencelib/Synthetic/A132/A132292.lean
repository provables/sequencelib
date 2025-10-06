/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A132292 sequence
-/

namespace Sequence

@[OEIS := A132292, offset := 1, maxIndex := 88, derive := true]
def A132292 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((x / 2) / 2) / 2

end Sequence