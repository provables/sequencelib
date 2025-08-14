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

# A131326 sequence 
-/

namespace Sequence

@[OEIS := A131326, offset := 0, derive := true, maxIndex := 10]
def A131326 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ (loop2 (λ(x y : ℤ) ↦ (2 + (x + y))) (λ(x y : ℤ) ↦ x) (y) (1) (1) - x)) (x) (1)

end Sequence
