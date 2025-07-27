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

# A330707 sequence 
-/

namespace Sequence

@[OEIS := A330707, offset := 0, derive := true, maxIndex := 10]
def A330707 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop (λ(x y : ℤ) ↦ (x + y)) (x) ((x * x)) / 2)


end Sequence
