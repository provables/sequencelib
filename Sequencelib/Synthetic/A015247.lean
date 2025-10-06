/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A015247 sequence
-/

namespace Sequence

@[OEIS := A015247, offset := 0, maxIndex := 100, derive := true]
def A015247 (x : ℕ) : ℤ :=
  ((2 * ((x - (2 * 4)) * x)) + x) * x

end Sequence