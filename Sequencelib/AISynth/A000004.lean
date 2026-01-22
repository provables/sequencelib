/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A000004 sequence
-/

namespace Sequence

@[OEIS := A000004, offset := 0, maxIndex := 100, derive := true]

def A000004 : ℕ → ℕ
| _ => 0


end Sequence