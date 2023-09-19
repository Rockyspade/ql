// Code generated by depstubber. DO NOT EDIT.
// This is a simple stub for github.com/golang-jwt/jwt/v4/request, strictly for use in testing.

// See the LICENSE file for information about the licensing of the original library.
// Source: github.com/golang-jwt/jwt/v4/request (exports: ParseFromRequestOption; functions: ParseFromRequest)

// Package request is a stub of github.com/golang-jwt/jwt/v4/request, generated by depstubber.
package request

import (
	http "net/http"
)

type Extractor interface {
	ExtractToken(_ *http.Request) (string, error)
}

func ParseFromRequest(_ *http.Request, _ Extractor, _ interface{}, _ ...ParseFromRequestOption) (interface{}, error) {
	return nil, nil
}

type ParseFromRequestOption func(interface{})
