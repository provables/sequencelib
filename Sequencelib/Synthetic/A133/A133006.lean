/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A133006 sequence
-/

namespace Sequence

@[OEIS := A133006, offset := 1, maxIndex := 7, derive := true]
def A133006 (n : ℕ) : ℤ :=
  let x := n - 1
  ((x / (1 + ((x / 2) / 2))) + x) + x

end Sequence