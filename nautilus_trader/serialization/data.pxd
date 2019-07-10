#!/usr/bin/env python3
# -------------------------------------------------------------------------------------------------
# <copyright file="msgpack.pyx" company="Nautech Systems Pty Ltd">
#  Copyright (C) 2015-2019 Nautech Systems Pty Ltd. All rights reserved.
#  The use of this source code is governed by the license as found in the LICENSE.md file.
#  http://www.nautechsystems.io
# </copyright>
# -------------------------------------------------------------------------------------------------

# cython: language_level=3, boundscheck=False, wraparound=False, nonecheck=False

from nautilus_trader.model.objects cimport Symbol, Price, Tick, Bar


cdef class DataSerializer:
    """
    Provides a serializer for data objects.
    """

    cpdef object serialize_ticks(self, list ticks)