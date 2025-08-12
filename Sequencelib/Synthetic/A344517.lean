/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/

import Mathlib
import Sequencelib.Meta
import GenSeq
open Synth

/-!

# A344517 sequence 
-/

namespace Sequence

@[OEIS := A344517, offset := 4, derive := true, maxIndex := 87]
def A344517 (n : ℕ) : ℤ :=
  let x := n - 4
  (loop (λ(x y : ℤ) ↦ ((y / (1 + x)) + 2)) (((x + 2) * 2)) (0) / 2)

end Sequence
