/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A022964 sequence
-/

namespace Sequence

@[OEIS := A022964, offset := 0, maxIndex := 59, derive := true]
def A022964 (x : ℕ) : ℤ :=
  (2 * 4) - x

end Sequence