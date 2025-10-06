/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A032769 sequence
-/

namespace Sequence

@[OEIS := A032769, offset := 1, maxIndex := 69, derive := true]
def A032769 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((1 + x) / 4) + x

end Sequence