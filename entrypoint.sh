#!/bin/sh -l

cd /app/src

dotnet restore .
dotnet build .

GREETING=$(dotnet run -p GitHubActions.ConsoleApp -- "$NAME")

echo $GREETING

echo ::set-output name=greeting::$GREETING
