#!/bin/bash
ssh -L localhost:8993:imap.gmail.com:993 localhost -p 8022 -N -C -v
