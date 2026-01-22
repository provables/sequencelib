/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001147 sequence
-/

namespace Sequence

@[OEIS := A001147, offset := 0, maxIndex := 100, derive := true]

def A001147 : ℕ → ℕ 
| 0 => 1
| n + 1 => (2 * (n + 1) - 1) * A001147 n


end Sequence