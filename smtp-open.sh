#!/bin/bash
ssh -L localhost:8465:smtp.gmail.com:465 localhost -p 8022 -N -C -v
