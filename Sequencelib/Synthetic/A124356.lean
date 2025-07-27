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

# A124356 sequence 
-/

namespace Sequence

@[OEIS := A124356, offset := 1, derive := true, maxIndex := 10]
def A124356 (n : ℕ) : ℤ :=
  let x := n - 1
  (2 * loop2 (λ(x y : ℤ) ↦ (2 + y)) (λ(x y : ℤ) ↦ x) (x) (1) (2))


end Sequence
