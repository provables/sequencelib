/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A006882 sequence
-/

namespace Sequence

@[OEIS := A006882, offset := 0, maxIndex := 100, derive := true]

def A006882 : ℕ → ℕ
  | 0 | 1 => 1
  | n + 2 => (n + 2) * A006882 n


end Sequence