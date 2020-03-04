#!/bin/sh -l

cd /app/src

dotnet restore .
dotnet build .

NAME=GitHub

GREETING=$(dotnet run -p GitHubActions.ConsoleApp -- "$NAME")

echo $GREETING

echo ::set-output greeting=$GREETING
