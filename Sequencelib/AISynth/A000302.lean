/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A000302 sequence
-/

namespace Sequence

@[OEIS := A000302, offset := 0, maxIndex := 99, derive := true]

def A000302 : ℕ → ℕ
| 0 => 1
| n + 1 => 4 * A000302 n


end Sequence